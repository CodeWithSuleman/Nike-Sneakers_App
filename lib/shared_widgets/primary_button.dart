import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final Color? color;
  final double? width;
  final double? height;
  final String text;
  final SvgPicture? icon;
  final Color? textColor;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      this.color,
      this.textColor,
      this.width,
      this.height,
      required this.text,
      this.icon});

  @override
  Widget build(BuildContext context) {
    // final double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      height: height ?? MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: icon == null
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceAround,
            children: [
              if (icon != null) (icon!),
              Text(
                text,
                style: AppTypography.ralewayParagraphRegular.copyWith(
                  color: textColor ?? AppColor.blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
