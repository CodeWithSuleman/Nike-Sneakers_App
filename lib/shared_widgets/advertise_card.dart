import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';

class AdvertiseCard extends StatelessWidget {
  final String discount;
  final String sell;
  final String shoe;

  const AdvertiseCard({
    super.key,
    required this.discount,
    required this.sell,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: deviceHeight * 0.18,
        width: deviceWidth * 0.90,
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 30,
              child: Text(sell, style: AppTypography.ralewayParagraphRegular),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Text(discount,
                  style: AppTypography.popinsParagraphRegular.copyWith(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: AppColor.secondaryColor)),
            ),
            Positioned(
              top: 60,
              left: 5,
              child: SvgPicture.asset(AppIcons.star),
            ),
            Positioned(
              top: 20,
              left: 160,
              child: SvgPicture.asset(AppIcons.star),
            ),
            Positioned(
              top: 70,
              left: 180,
              child: SvgPicture.asset(AppIcons.star),
            ),
            Positioned(
              top: 30,
              left: 190,
              child: Transform.rotate(
                angle: pi / 9,
                child: Text(
                  "New",
                  style: AppTypography.ralewayParagraphRegularSmall
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 200,
              child: Text(
                "V",
                style: AppTypography.ralewayParagraphRegularSmall
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 0,
              child: Image.asset(
                shoe,
                height: deviceHeight * 0.12,
                width: deviceWidth * 0.35,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
