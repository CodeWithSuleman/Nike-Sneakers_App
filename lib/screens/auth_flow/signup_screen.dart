import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/auth_flow/login_screen.dart';
import 'package:nike_sneakers/shared_widgets/google_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PrimaryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              const Text(
                "Register Account!",
                style: AppTypography.ralewayheadingLarge,
              ),
              Text(
                "Fill your details or continue with \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsocial media",
                style: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: deviceHeight * 0.01),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  const Text(
                    "Your Name",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                ],
              ),
              PrimaryTextfield(
                obscureText: false,
                text: "Name",
                onPressed: () {},
                controller: emailController,
                autoCorrect: true,
              ),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  const Text(
                    "Email Address",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                ],
              ),
              PrimaryTextfield(
                obscureText: false,
                text: "xyz@gmail.com",
                onPressed: () {},
                controller: emailController,
                autoCorrect: true,
              ),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  const Text(
                    "Password",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.08,
                child: PrimaryTextfield(
                  obscureText: _obscureText,
                  text: "Password",
                  onPressed: () {},
                  controller: passController,
                  autoCorrect: false,
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: deviceHeight * 0.02),
              PrimaryButton(
                textColor: AppColor.whiteColor,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInScreen(),
                    ),
                  );
                },
                text: "SignUp",
                color: AppColor.primaryColor,
              ),
              SizedBox(height: deviceHeight * 0.04),
              GoogleButton(onPressed: () {}, bText: "Sign In with Google "),
              SizedBox(height: deviceHeight * 0.04),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already Have an account?",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                      color: AppColor.blackColor.withOpacity(0.6),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "LogIn",
                      style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
