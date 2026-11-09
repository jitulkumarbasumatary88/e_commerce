import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app/shared/app_button.dart';
import 'package:e_commerce_app/data/products_model.dart';

void main() {
  group('Unit Tests - Data Models', () {
    test('ProductsModel parses JSON correctly', () {
      final json = {
        'products': [
          {
            'id': 1,
            'title': 'Test Shoe',
            'price': 99.99,
            'category': 'fashion',
            'rating': 4.5,
          }
        ],
        'total': 1,
        'skip': 0,
        'limit': 10,
      };

      final model = ProductsModel.fromJson(json);

      expect(model.total, 1);
      expect(model.products?.length, 1);
      expect(model.products?.first.title, 'Test Shoe');
      expect(model.products?.first.price, 99.99);
    });
  });

  group('Widget Tests - Shared Components', () {
    testWidgets('AppButton displays label and responds to tap', (tester) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(
              buttonText: 'Buy Now',
              onTap: () => tapped = true,
            ),
          ),
        ),
      );

      expect(find.text('Buy Now'), findsOneWidget);

      await tester.tap(find.text('Buy Now'));
      await tester.pump();

      expect(tapped, isTrue);
    });
  });
}
