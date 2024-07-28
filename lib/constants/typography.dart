import 'package:flutter/material.dart';

class AppTypography {
  static const _raleway = 'Raleway';
  static const _popoins = 'Popins';

  static const TextStyle ralewayheadingSemiLarge = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);

  static const TextStyle ralewayheadingSemiLargeMedium = TextStyle(
        fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
    fontFamily: _raleway,
);
  static const TextStyle popinsParagraphRegular = TextStyle(
      fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
    fontFamily: _popoins,
  );
  static const TextStyle popinsParagraphRegularSmall = TextStyle(
        fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
    fontFamily: _popoins,
  );

  static const TextStyle ralewayParagraphRegular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayParagraphRegularSmall = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);

  static const TextStyle ralewayMediumHeadingLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
    fontFamily: _raleway,
  );
  static const TextStyle ralewayHeadingLarge = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
    fontFamily: _raleway,
  );
  static const TextStyle ralewayheadingSemiLarge = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
    fontFamily: _raleway,
  );
 
}
