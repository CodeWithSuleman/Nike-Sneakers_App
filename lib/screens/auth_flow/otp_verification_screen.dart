import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/auth_flow/login_screen.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({
    super.key,
  });

  final TextEditingController _pinPutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PrimaryAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight * 0.03),
            const Text(
              "OTP Verification",
              style: AppTypography.ralewayheadingLarge,
            ),
            Row(
              children: [
                SizedBox(width: deviceWidth * 0.09),
                Text(
                  "Please check your email to see the  \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tverification code",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                    color: AppColor.blackColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.06),
            Row(
              children: [
                SizedBox(width: deviceWidth * 0.07),
                Text(
                  "OTP Code",
                  style: AppTypography.ralewayheadingSemiLarge
                      .copyWith(fontSize: 21),
                )
              ],
            ),
            SizedBox(height: deviceHeight * 0.02),
            Pinput(
              controller: _pinPutController,
              keyboardType: TextInputType.number,
              onTap: () {},
              length: 4,
              showCursor: true,
              defaultPinTheme: PinTheme(
                padding: EdgeInsets.zero,
                textStyle: AppTypography.ralewayheadingSemiLarge,
                width: deviceWidth * 0.17,
                height: deviceHeight * 0.08,
                margin: const EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: AppColor.blackColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: deviceHeight * 0.05),
            PrimaryButton(
              textColor: AppColor.whiteColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                );
              },
              text: "Verify",
              color: AppColor.primaryColor,
            ),
            SizedBox(height: deviceHeight * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resend code",
                    style: AppTypography.ralewayParagraphRegularSmall.copyWith(
                      color: AppColor.blackColor,
                    ),
                  ),
                  Text("00:30",
                      style:
                          AppTypography.ralewayParagraphRegularSmall.copyWith(
                        color: AppColor.blackColor,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
