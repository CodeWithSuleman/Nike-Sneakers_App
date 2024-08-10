import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';

class FavoriteCircle extends StatelessWidget {
  final Color? firstCircleColor;
  final Color? secondCircleColor;
  const FavoriteCircle({
    super.key,
    this.firstCircleColor = AppColor.redColor,
    this.secondCircleColor = AppColor.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        CircleAvatar(radius: 8, backgroundColor: firstCircleColor),
        SizedBox(width: deviceWidth * 0.02),
        CircleAvatar(radius: 8, backgroundColor: secondCircleColor),
      ],
    );
  }
}
