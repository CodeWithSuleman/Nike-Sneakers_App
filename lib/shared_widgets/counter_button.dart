import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';

class CounterButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String bText;
  const CounterButton(
      {super.key, required this.onPressed, required this.bText});

  @override
  Widget build(BuildContext context) {
    final double buttonHeight = MediaQuery.of(context).size.height;
    final double buttonWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      width: buttonWidth * 0.2,
      height: buttonHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed,
            child: SvgPicture.asset(
              AppIcons.add,
              height: buttonHeight * 0.03,
            ),
          ),
          Text(
            bText,
            style: AppTypography.ralewayheadingLarge,
          ),
          TextButton(
            onPressed: onPressed,
            child: SvgPicture.asset(
              AppIcons.minus,
              width: buttonWidth * 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
