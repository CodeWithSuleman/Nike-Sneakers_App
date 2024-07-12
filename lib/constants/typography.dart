import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';

class AppTypography {
  static const _raleway = 'Raleway';
  static const _popoins = 'Popins';

  static const TextStyle ralewayheadingLarge = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayheadingSemiLarge = TextStyle(
      fontSize: 24,
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
}
