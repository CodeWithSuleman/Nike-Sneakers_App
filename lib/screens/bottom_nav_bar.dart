import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/screens/cart_screen.dart';
import 'package:nike_sneakers/screens/favorite_products_screen.dart';
import 'package:nike_sneakers/screens/home_screen.dart';
import 'package:nike_sneakers/screens/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const FavoriteProductsScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.home,
                colorFilter:
                    const ColorFilter.mode(AppColor.greyColor, BlendMode.srcIn),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.heart), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.cart,
                colorFilter:
                    const ColorFilter.mode(AppColor.greyColor, BlendMode.srcIn),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.profile), label: ""),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
