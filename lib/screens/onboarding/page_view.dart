import 'package:flutter/material.dart';
import 'package:nike_sneakers/screens/onboarding/widgets/first_onboard_screen.dart';
import 'package:nike_sneakers/screens/auth_flow/login_screen.dart';
import 'package:nike_sneakers/screens/onboarding/widgets/second_onboard_screen.dart';
import 'package:nike_sneakers/screens/onboarding/widgets/third_onboard_screen.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<Widget> _pages = const [
    FirstOnboardScreen(),
    SecondOnboardScreen(),
    ThirdOnboardScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  /// For [OnPageChanged]
  void onPageChanged(BuildContext context) {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    setState(() {
      _currentPage++;
    });

    if (_pageController.page == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          itemCount: _pages.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            return _pages[index];
          },
        ),
        Positioned(
          bottom: 20,
          child: PrimaryButton(
            onPressed: () {
              onPageChanged(context);
            },
            text: _currentPage == 0 ? 'Get Started' : 'Next',
          ),
        ),
      ],
    );
  }
}
