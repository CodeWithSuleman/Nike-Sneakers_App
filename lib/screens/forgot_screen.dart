import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/otp_verification_screen.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({
    super.key,
  });

  final TextEditingController newPasswordController = TextEditingController();
  static double deviceHeight = 0;
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PrimaryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(height: deviceHeight * 0.1),
              const Text(
                "Forgot Password",
                style: AppTypography.ralewayheadingLarge,
              ),
              Text(
                "Enter your Email Account to Reset \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tYour Password",
                style: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: deviceHeight * 0.06),
              PrimaryTextfield(
                obscureText: false,
                text: "xxxxxx",
                onPressed: () {},
                controller: newPasswordController,
                autoCorrect: true,
              ),
              SizedBox(height: deviceHeight * 0.02),
              PrimaryButton(
                onPressed: () {
                  _showResetPassDialog(context);
                },
                bText: "Reset Password",
                bColor: AppColor.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showResetPassDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(Duration(milliseconds: 1000), () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpVerificationScreen(),
            ),
          );
        });
        return AlertDialog(
          title: Column(
            children: [
              const Icon(
                Icons.mail_rounded,
                color: AppColor.primaryColor,
              ),
              SizedBox(height: deviceHeight * 0.03),
              const Text(
                "Check your email",
                style: AppTypography.popinsParagraphRegular,
              ),
            ],
          ),
          content: const Text(
            "\t\tWe have sent a password recovery code to your email",
            style: AppTypography.popinsParagraphRegular,
          ),
        );
      },
    );
  }
}
