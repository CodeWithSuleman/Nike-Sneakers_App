import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/forgot_screen.dart';
import 'package:nike_sneakers/shared_widgets/google_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';
import 'package:nike_sneakers/screens/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
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
              //SizedBox(height: deviceHeight * 0.1),
              const Text(
                "Hello Again!",
                style: AppTypography.ralewayheadingLarge,
              ),
              Text(
                "Fill your details or continue with \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsocial media",
                style: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: deviceHeight * 0.04),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Recovery Password",
                      style: AppTypography.popinsParagraphRegularSmall.copyWith(
                        color: AppColor.blackColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              PrimaryButton(
                onPressed: () {},
                bText: "SignIn",
                bColor: AppColor.primaryColor,
              ),
              SizedBox(height: deviceHeight * 0.04),
              GoogleButton(onPressed: () {}, bText: "Sign In with Google "),
              SizedBox(height: deviceHeight * 0.1),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "New User?",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                      color: AppColor.blackColor.withOpacity(0.6),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Create Account",
                      style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor,
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
