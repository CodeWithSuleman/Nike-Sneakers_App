import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon? icon;
  final bool autoCorrect;
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
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        keyboardType: keyBoardType,
        controller: controller,
        autocorrect: autoCorrect,
        decoration: InputDecoration(
          labelText: text,
          hintText: text,
          prefixIcon: icon,
          suffix: suffix,
          filled: true,
          fillColor: color,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
