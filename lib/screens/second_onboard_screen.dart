import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';

class SecondOnboardScreen extends StatelessWidget {
  final PageController pageController;
  const SecondOnboardScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: AppColor.secondaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: AppColor.secondaryColor,
          ),
          Positioned(
            top: 420,
            child: SvgPicture.asset(AppIcons.nikeSign),
          ),
          Positioned(
            bottom: 370,
            child: Image.asset(
              AppImages.shoe002,
              height: deviceHeight * 0.4,
            ),
          ),
          Positioned(
            top: 400,
            child: Container(
              height: deviceHeight * 0.01,
              width: deviceWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    blurRadius: 30.0,
                    offset: Offset(4.0, 4.0),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 280,
            child: SvgPicture.asset(AppIcons.smillyFace),
          ),
          Positioned(
            top: 150,
            right: 230,
            child: SvgPicture.asset(AppIcons.curly),
          ),
          Positioned(
            top: 450,
            left: 40,
            child: Text(
              "Let’s Start Journey \n\t\t\t\t\t\t\tWith Nike",
              style: AppTypography.ralewayheadingLarge
                  .copyWith(color: AppColor.whiteColor),
            ),
          ),
          Positioned(
            top: 550,
            left: 40,
            child: Text(
              "Smart, Gorgeous & Fashionable  \n\t\t\t\t\t\t\tCollection Explore Now",
              style: AppTypography.popinsParagraphRegular
                  .copyWith(color: AppColor.whiteColor.withOpacity(0.8)),
            ),
          ),
          Positioned(
            top: 690,
            child: PrimaryButton(
                onPressed: () {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                bText: "Next"),
          ),
        ],
      ),
    );
  }
}
