import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const ArrowButton(
      {super.key, required this.onNext, required this.onPrevious});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.028,
      width: deviceWidth * 0.15,
      decoration: BoxDecoration(
        color: AppColor.greyColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onPrevious,
              child: Center(
                child: SvgPicture.asset(
                  height: deviceHeight * 0.017,
                  AppIcons.backArrow,
                  colorFilter: ColorFilter.mode(
                    AppColor.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onNext,
              child: Center(
                child: SvgPicture.asset(
                  AppIcons.rightArrow,
                  colorFilter: ColorFilter.mode(
                    AppColor.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
