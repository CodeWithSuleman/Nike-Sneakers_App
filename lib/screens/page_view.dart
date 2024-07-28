import 'package:flutter/material.dart';
import 'package:nike_sneakers/screens/first_onboard_screen.dart';
import 'package:nike_sneakers/screens/second_onboard_screen.dart';
import 'package:nike_sneakers/screens/third_onboard_screen.dart';

class PageViewBuilder extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<Widget> _pages = [];

  PageViewBuilder({super.key}) {
    _pages.add(FirstOnboardScreen(pageController: _pageController));
    _pages.add(SecondOnboardScreen(pageController: _pageController));
    _pages.add(ThirdOnboardScreen(pageController: _pageController));
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _pages.length,
      controller: _pageController,
      itemBuilder: (context, index) {
        return _pages[index];
      },
    );
  }
}
