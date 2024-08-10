import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/shared_widgets/primary_listtile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: AppColor.secondaryColor,
      child: ListView(
        children: [
          // UserAccountsDrawerHeader(
          //   decoration: BoxDecoration(color: AppColor.secondaryColor),
          //   accountName: const Text("Emmanuel Oyiboke"),
          //   accountEmail: Text(""),
          //   currentAccountPicture: CircleAvatar(
          //     child: Image.asset(AppImages.profile),
          //   ),
          // ),
          Container(
            color: AppColor.secondaryColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage(AppImages.profile),
                ),
                SizedBox(height: deviceHeight * 0.03),
                Text(
                  "Emmanuel Oyiboke",
                  style: AppTypography.ralewayheadingSemiLargeMedium
                      .copyWith(color: AppColor.whiteColor),
                ),
              ],
            ),
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.profile,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Profile",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.cart,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "My Cart",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.heart,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Favorite",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.orders,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Orders",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.notification,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Notification",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.setting,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Settings",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
          SizedBox(height: deviceHeight * 0.02),
          const Divider(
            color: AppColor.whiteColor,
            thickness: 3,
            indent: 25,
            endIndent: 20,
          ),
          PrimaryListTile(
            leading: SvgPicture.asset(
              AppIcons.signOut,
              colorFilter: const ColorFilter.mode(
                AppColor.whiteColor,
                BlendMode.srcIn,
              ),
            ),
            title: "Sign Out",
            textColor: AppColor.whiteColor,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
