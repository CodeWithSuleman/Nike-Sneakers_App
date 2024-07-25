import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final Color? bColor;
  final double? bWidth;
  final double? bHeight;
  final String bText;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      this.bColor,
      this.bWidth,
      this.bHeight,
      required this.bText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: bWidth ?? MediaQuery.of(context).size.width * 0.9,
      height: bHeight ?? MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Text(
          bText,
          style: AppTypography.ralewayParagraphRegular
              .copyWith(color: AppColor.whiteColor),
        ),
      ),
    );
  }
}
