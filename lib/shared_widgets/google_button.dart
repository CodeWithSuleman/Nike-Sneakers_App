import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? bWidth;
  final double? bHeight;
  final String bText;
  const GoogleButton(
      {super.key,
      required this.onPressed,
      this.bWidth,
      this.bHeight,
      required this.bText});

  @override
  Widget build(BuildContext context) {
    final double deviceHight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: bWidth ?? MediaQuery.of(context).size.width * 0.9,
      height: bHeight ?? MediaQuery.of(context).size.height * 0.08,
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
              height: deviceHight * 0.04,
            ),
            SizedBox(width: deviceWidth * 0.04),
            Text(
              bText,
              style: AppTypography.popinsParagraphRegular,
            ),
          ],
        ),
      ),
    );
  }
}
