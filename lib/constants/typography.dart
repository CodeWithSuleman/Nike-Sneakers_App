import 'package:flutter/material.dart';

class AppTypography {
  static const _raleway = 'Raleway';
  static const _poppins = 'Popins';

  static const TextStyle ralewayheadingLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: _raleway,
    height: 1.5,
  );
  static const TextStyle ralewayheadingSemiLarge = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayheadingSemiLargeMedium = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle popinsParagraphRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: _poppins,
    height: 1.5,
  );
  static const TextStyle popinsParagraphRegularSmall = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _poppins,
      height: 1.5);

  static const TextStyle ralewayParagraphRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
    fontFamily: _raleway,
    height: 1.5,
  );
  static const TextStyle ralewayParagraphRegularSmall = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
}
