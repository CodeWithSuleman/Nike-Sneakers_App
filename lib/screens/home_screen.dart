import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/screens/drawer.dart';
import 'package:nike_sneakers/screens/tab_bar_screen.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PrimaryAppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset(AppIcons.drawer));
        }),
        centerTitle: true,
        title: "Explore",
        actions: [
          CircleAvatar(
            backgroundColor: AppColor.whiteColor,
            radius: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.cart,
              ),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: deviceHeight * 0.02),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: deviceWidth * 0.8,
                child: PrimaryTextfield(
                  prefix: Container(
                    width: deviceWidth * 0.1,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppIcons.search,
                      width: deviceWidth * 0.06,
                    ),
                  ),
                  text: "Looking for shoes",
                  onPressed: () {},
                  controller: searchController,
                  autoCorrect: true,
                  obscureText: false,
                ),
              ),
              GestureDetector(
                child: SvgPicture.asset(AppIcons.more),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: deviceHeight * 0.02),
          Row(
            children: [
              SizedBox(width: deviceWidth * 0.03),
              const Text(
                "Select category",
                style: AppTypography.ralewayParagraphRegular,
              ),
            ],
          ),
          TabBarScreen()
        ],
      ),
    );
  }
}
