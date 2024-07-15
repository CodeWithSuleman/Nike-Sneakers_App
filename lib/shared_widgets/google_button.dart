import 'package:flutter/material.dart';
import 'package:nike_sneakers/Utilities/extension.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';

class GoogleButton extends StatelessWidget {
  final Function() onPressed;
  final double? width;
  final double? height;
  final String text;
  const GoogleButton(
      {super.key,
      required this.onPressed,
      this.width,
      this.height,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.screenWidth * 0.9,
      height: height ?? context.screenHeight * 0.08,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.googleLogo,
              height: context.screenHeight * 0.04,
            ),
            SizedBox(width: context.screenWidth * 0.04),
            Text(
              text,
              style: AppTypography.popinsParagraphRegular,
            ),
          ],
        ),
      ),
    );
  }
}
