import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/products_model.dart';

class ApiIntegration {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://dummyjson.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<ProductsModel> fetchProducts() async {
    try {
      final response = await _dio.get('/products');
      return ProductsModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to load products');
    } catch (e) {
      throw Exception('An unexpected error occurred');
    }
  }
}
