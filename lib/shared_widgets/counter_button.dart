import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/Utilities/extension.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';

class CounterButton extends StatelessWidget {
  final Function() onIncrement;
  final Function() onDecrement;
  final String text;
  const CounterButton(
      {super.key,
      required this.text,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      width: context.screenWidth * 0.2,
      height: context.screenHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onIncrement,
            child: SvgPicture.asset(
              AppIcons.add,
              height: context.screenHeight * 0.03,
            ),
          ),
          Text(
            text,
            style: AppTypography.ralewayheadingLarge,
          ),
          TextButton(
            onPressed: onDecrement,
            child: SvgPicture.asset(
              AppIcons.minus,
              width: context.screenWidth * 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
