import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';

class ThirdOnboardScreen extends StatelessWidget {
  const ThirdOnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: AppColor.secondaryColor,
          ),
          Positioned(
            top: 400,
            child: SvgPicture.asset(AppIcons.nikeSign),
          ),
          Positioned(
            bottom: 350,
            child: SvgPicture.asset(
              AppIcons.circle,
            ),
          ),
          Positioned(
            bottom: 250,
            child: Image.asset(
              AppImages.shoe003,
              height: deviceHeight * 0.6,
            ),
          ),
          Positioned(
            top: 120,
            right: 250,
            child: SvgPicture.asset(
              AppIcons.smillyFace,
              height: deviceHeight * 0.1,
            ),
          ),
          Positioned(
            top: 420,
            left: 80,
            child: Text(
              "You Have the \n\t\t\t\t\tPower to",
              style: AppTypography.ralewayheadingLarge
                  .copyWith(color: AppColor.whiteColor),
            ),
          ),
          Positioned(
            top: 525,
            left: 10,
            child: Text(
              "There Are Many Beautiful And Attractive \n\t\t\t\t\t\t\tCollection Plants To Your Room",
              style: AppTypography.popinsParagraphRegular
                  .copyWith(color: AppColor.whiteColor.withOpacity(0.8)),
            ),
          ),
          // Positioned(
          //   top: 690,
          //   child: PrimaryButton(
          //       onPressed: () {
          //         pageController.nextPage(
          //             duration: const Duration(milliseconds: 500),
          //             curve: Curves.easeIn);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const LogInScreen(),
                  //   ),
                  // );
          //       },
          //       bText: "Next"),
          // ),
        ],
      ),
    );
  }
}
