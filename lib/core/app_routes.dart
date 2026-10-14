import 'package:flutter/material.dart';

import '../data/products_model.dart';
import '../features/auth/forgot_password_screen.dart';
import '../features/cart/cart_screen.dart';
import '../features/checkout/checkout_screen.dart';
import '../features/home/home_screen.dart';
import '../features/order_success/order_success_dialog.dart';
import '../features/payment/payment_screen.dart';
import '../features/product_detail/product_detail_screen.dart';
import '../features/auth/sign_in_screen.dart';
import '../features/auth/sign_up_screen.dart';
import '../features/onboarding/get_started_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/product_list/product_list_screen.dart';
import '../features/profile/profile_screen.dart';

class AppRoutes {
  static void toOnboarding(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnboardingScreen()),
    );
  }

  static void toGetStarted(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const GetStartedScreen()),
    );
  }

  static void toSignIn(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignInScreen()),
    );
  }

  static void toSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
    );
  }

  static void toForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
    );
  }

  ////////////////////
  static void toHomeScreen(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (route) => false,
    );
  }

  static void toProductListScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductListScreen()),
    );
  }

  static void toProductDetailScreen(BuildContext context, {Products? product}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }

  static void toProfileScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  static void toCheckoutScreen(BuildContext context, {Products? product}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CheckoutScreen(product: product)),
    );
  }

  static void toCartScreen(BuildContext context, {Products? product}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CartScreen(product: product)),
    );
  }

  static void toPaymentScreen(BuildContext context, {Products? product}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentScreen(product: product)),
    );
  }

  static void showOrderSuccess(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const OrderSuccessDialog(),
    );
  }
}
