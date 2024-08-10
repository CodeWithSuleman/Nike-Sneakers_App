import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/auth_flow/forgot_screen.dart';
import 'package:nike_sneakers/screens/edit_profile_screen.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool _obscureText = true;
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PrimaryAppBar(
        centerTitle: true,
        title: "Profile",
        textStyle: AppTypography.ralewayheadingSemiLarge,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
          child: Column(
            children: [
              GestureDetector(
                onTap: _pickImageFromGallery,
                child: CircleAvatar(
                  backgroundColor: AppColor.greyColor.withOpacity(0.2),
                  radius: 40,
                  backgroundImage: _selectedImage != null
                      ? FileImage(_selectedImage!)
                      : null,
                  child: _selectedImage == null
                      ? const Icon(Icons.camera_alt, color: AppColor.greyColor)
                      : null,
                ),
              ),
              SizedBox(height: deviceHeight * 0.04),
              Row(
                children: [
                  SizedBox(
                    width: deviceWidth * 0.04,
                    height: deviceHeight * 0.06,
                  ),
                  Text(
                    "Your Name",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.greyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PrimaryTextfield(
                obscureText: false,
                text: "EMMANUEL OYIBOKE",
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
                    "Your Email",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.greyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PrimaryTextfield(
                obscureText: false,
                text: "emmanueloyiboke@gmail.com",
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
                    "Password",
                    style: AppTypography.ralewayParagraphRegular.copyWith(
                        color: AppColor.greyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.08,
                child: PrimaryTextfield(
                  obscureText: true,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
                text: "Save Now",
                textColor: AppColor.whiteColor,
                color: AppColor.primaryColor,
              ),
              SizedBox(height: deviceHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage.path);
    });
  }
}
