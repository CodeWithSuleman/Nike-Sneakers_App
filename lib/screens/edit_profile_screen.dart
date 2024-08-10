import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PrimaryAppBar(
        centerTitle: true,
        title: "Profile",
        textStyle: AppTypography.ralewayheadingSemiLarge,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Text(
              "Done",
              style: AppTypography.ralewayParagraphRegular
                  .copyWith(color: AppColor.primaryColor),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
          child: Column(
            children: [
              CircleAvatar(),
              SizedBox(height: deviceHeight * 0.04),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  Text(
                    "First Name",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PrimaryTextfield(
                obscureText: false,
                readOnly: true,
                text: "EMMANUEL ",
                onPressed: () {},
                controller: nameController,
                autoCorrect: true,
                suffix: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.done,
                    color: AppColor.primaryColor,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  Text(
                    "Last Name",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PrimaryTextfield(
                readOnly: true,
                suffix: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.done,
                    color: AppColor.primaryColor,
                  ),
                ),
                obscureText: false,
                text: "OYIBOKE ",
                onPressed: () {},
                controller: nameController,
                autoCorrect: true,
              ),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  Text(
                    "Location",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PrimaryTextfield(
                suffix: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.done,
                    color: AppColor.primaryColor,
                  ),
                ),
                obscureText: false,
                readOnly: true,
                text: "Nigeria",
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
                  Text(
                    "Mobile Number",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.08,
                child: PrimaryTextfield(
                  suffix: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.done,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  obscureText: true,
                  text: "8888-9999-555",
                  onPressed: () {},
                  controller: passController,
                  autoCorrect: false,
                  prefix: const Text("+92"),
                  readOnly: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
