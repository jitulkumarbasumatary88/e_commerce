import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/products_model.dart';

part 'cart_riverpod.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  List<Products> build() => [];

  void addToCart(Products product) {
    state = [...state, product];
  }

  void removeFromCart(num id) {
    state = state.where((item) => item.id != id).toList();
  }

  void clearCart() {
    state = [];
  }
}
