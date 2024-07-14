import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';

class AppTypography {
  static const _raleway = 'Raleway';
  static const _popoins = 'Popins';

  static const TextStyle ralewayMediumHeadingLarge = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayHeadingLarge = TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayheadingSemiLarge = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayMediumHeadingSemiLarge = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle popinsParagraphRegular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _popoins,
      height: 1.5);
  static const TextStyle popinsMediumParagraphRegular = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _popoins,
      height: 1.5);
}
