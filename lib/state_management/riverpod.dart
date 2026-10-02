import 'package:e_commerce_app/api_integration/api_integration.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@riverpod
class ProductsNotifier extends _$ProductsNotifier  {
  final api = ApiIntegration();

  @override
  FutureOr<ProductsModel> build() async {
    return api.fetchProducts();
  }
}
