import 'package:flutter/material.dart';
import 'package:nike_sneakers/screens/home_screen.dart';
// import 'package:nike_sneakers/screens/forgot_screen.dart';
// import 'package:nike_sneakers/screens/login_screen.dart';
// import 'package:nike_sneakers/screens/otp_verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LogInScreen(),
      // home: OtpVerificationScreen(),
      home: HomeScreen(),
    );
  }
}
