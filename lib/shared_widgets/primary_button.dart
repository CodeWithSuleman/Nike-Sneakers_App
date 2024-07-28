import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/Utilities/extension.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;

  final Color? color;
  final double? width;
  final double? height;
  final String text;


  const PrimaryButton(
      {super.key,
      required this.onPressed,
      this.color,
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
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Text(
//<<<<<<< ui/authFlow
 //         bText,
  //        style: AppTypography.ralewayParagraphRegular
   //           .copyWith(color: AppColor.whiteColor),
///=======
          text,
          style: AppTypography.popinsParagraphRegular,
//>>>>>>> dev
        ),
      ),
    );
  }
}
