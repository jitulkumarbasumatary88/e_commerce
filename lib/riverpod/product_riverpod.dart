import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/api_service.dart';
import '../data/products_model.dart';

part 'product_riverpod.g.dart';

@riverpod
class ProductsNotifier extends _$ProductsNotifier {
  final _api = ApiService();

  @override
  FutureOr<ProductsModel> build() async {
    return _api.fetchProducts();
  }
}
