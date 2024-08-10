import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:nike_sneakers/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
  // debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
