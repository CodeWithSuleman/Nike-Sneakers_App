import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';

class FirstOnboardScreen extends StatelessWidget {
  final PageController pageController;
  const FirstOnboardScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 450,
            child: SvgPicture.asset(AppIcons.nikeSign),
          ),
          Positioned(
            top: 520,
            child: SvgPicture.asset(AppIcons.curly),
          ),
          Positioned(
            top: 590,
            left: 200,
            child: SvgPicture.asset(AppIcons.curly),
          ),
          Positioned(
            top: 290,
            left: 70,
            child: SvgPicture.asset(AppIcons.smillyFace),
          ),
          Positioned(
            top: 130,
            left: 70,
            child: Text(
              "WELLCOME TO \n\t\t\t\t\t\t\t\t\tNIKE",
              style: AppTypography.ralewayheadingLarge
                  .copyWith(color: AppColor.whiteColor),
            ),
          ),
          Positioned(
            left: 110,
            top: 230,
            child: SvgPicture.asset(AppIcons.signature),
          ),
          Positioned(
            top: 110,
            child: Image.asset(
              AppImages.shoe001,
              height: deviceHeight * 0.8,
            ),
          ),
          Positioned(
            top: 690,
            left: 20,
            child: PrimaryButton(
              onPressed: () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              bText: "Get Started",
            ),
          ),
        ],
      ),
    );
  }
}
