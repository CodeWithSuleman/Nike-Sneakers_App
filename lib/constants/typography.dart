import 'package:flutter/material.dart';

class AppTypography {
  static const _raleway = 'Raleway';
  static const _popoins = 'Popins';

  static const TextStyle ralewayheadingLarge = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle ralewayheadingSemiLarge = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
  static const TextStyle popinsParagraphRegular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _popoins,
      height: 1.5);

  static const TextStyle ralewayParagraphRegular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      fontFamily: _raleway,
      height: 1.5);
}
