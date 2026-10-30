import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/local/app_database.dart';
import '../data/products_model.dart';

class CartNotifier extends StreamNotifier<List<CartItem>> {
  final _db = AppDatabase();

  @override
  Stream<List<CartItem>> build() {
    return _db.select(_db.cartItems).watch();
  }

  Future<void> addToCart(Products product) async {
    final productId = product.id?.toInt() ?? 0;

    final existingItem = await (_db.select(
      _db.cartItems,
    )..where((tbl) => tbl.productId.equals(productId))).getSingleOrNull();

    if (existingItem != null) {
      await (_db.update(
        _db.cartItems,
      )..where((tbl) => tbl.id.equals(existingItem.id))).write(
        CartItemsCompanion(quantity: Value(existingItem.quantity + 1)),
      );
    } else {
      await _db
          .into(_db.cartItems)
          .insert(
            CartItemsCompanion.insert(
              productId: productId,
              title: product.title ?? 'No Title',
              price: product.price?.toDouble() ?? 0.0,
              thumbnail: Value(product.thumbnail),
              category: Value(product.category),
              quantity: const Value(1),
              rating: Value(product.rating?.toDouble()),
            ),
          );
    }
  }

  Future<void> removeFromCart(int id) async {
    await (_db.delete(_db.cartItems)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> updateQuantity(int id, int newQuantity) async {
    if (newQuantity <= 0) {
      await removeFromCart(id);
    } else {
      await (_db.update(_db.cartItems)..where((tbl) => tbl.id.equals(id)))
          .write(CartItemsCompanion(quantity: Value(newQuantity)));
    }
  }

  Future<void> clearCart() async {
    await _db.delete(_db.cartItems).go();
  }
}

final cartNotifierProvider =
    StreamNotifierProvider<CartNotifier, List<CartItem>>(CartNotifier.new);
