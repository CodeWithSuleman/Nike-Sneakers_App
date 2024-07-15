import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon? icon;
  final TextEditingController controller;
  final Widget? suffix;
  const PrimaryTextfield({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.suffix,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        hintText: text,
        prefixIcon: icon,
        suffix: suffix,
      ),
    );
  }
}
