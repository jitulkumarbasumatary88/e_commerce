import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool hasBorder;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.hasBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,

      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: 1,
      ),

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          letterSpacing: 1,
        ),

        prefixIcon: prefixIcon,

        suffixIcon: suffixIcon,

        filled: true,
        fillColor: Colors.white,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: hasBorder
              ? BorderSide(color: Colors.grey)
              : BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: hasBorder
              ? const BorderSide(color: Colors.black, width: 1)
              : BorderSide.none,
        ),
      ),
    );
  }
}
