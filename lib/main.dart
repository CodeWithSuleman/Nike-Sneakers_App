import 'package:flutter/material.dart';
import 'package:nike_sneakers/screens/home_screen.dart';
// import 'package:nike_sneakers/screens/forgot_screen.dart';
// import 'package:nike_sneakers/screens/login_screen.dart';
// import 'package:nike_sneakers/screens/otp_verification_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';

import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/shared_widgets/primary_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LogInScreen(),
      // home: OtpVerificationScreen(),
      home: HomeScreen(),
    );
  }
}
