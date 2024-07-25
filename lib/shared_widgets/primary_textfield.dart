import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';

class PrimaryTextfield extends StatelessWidget {
  final String text;
  final String? label;
  final VoidCallback onPressed;
  final Icon? icon;
  final bool autoCorrect;
  final bool obscureText;
  final Color? color;
  final TextInputType? keyBoardType;
  final TextEditingController controller;
  final Widget? suffix;
  const PrimaryTextfield({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.suffix,
    required this.controller,
    this.keyBoardType,
    required this.autoCorrect,
    this.color,
    this.label,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: keyBoardType,
        controller: controller,
        autocorrect: autoCorrect,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: text,
          prefixIcon: icon,
          suffix: suffix,
          filled: true,
          fillColor: color,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.transparentColor),
            borderRadius: BorderRadius.circular(17),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: const BorderSide(color: AppColor.transparentColor),
          ),
        ),
      ),
    );
  }
}
