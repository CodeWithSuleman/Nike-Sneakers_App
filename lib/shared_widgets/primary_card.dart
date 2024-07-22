import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryCard extends StatelessWidget {
  final String image;
  final String price;
  final String shoeName;
  final String shoeCategory;
  final IconButton iconButton;
  final Function() onTap;
  const PrimaryCard({
    super.key,
    required this.image,
    required this.price,
    required this.shoeName,
    required this.iconButton,
    required this.shoeCategory,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.340,
      width: deviceWidth * 0.540,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        color: AppColor.whiteColor,
        child: Stack(
          children: [
            iconButton,
            Image.asset(
              image,
              height: deviceHeight * 0.269,
              width: deviceWidth * 0.540,
            ),
            Positioned(
              left: 10,
              top: 180,
              child: Text(
                shoeCategory,
                style: AppTypography.popinsParagraphRegular
                    .copyWith(color: AppColor.primaryColor),
              ),
            ),
            Positioned(
              left: 10,
              top: 200,
              child: Text(
                shoeName,
                style: AppTypography.popinsParagraphRegular
                    .copyWith(color: AppColor.secondaryColor),
              ),
            ),
            Positioned(
              left: 10,
              top: 220,
              child: Text(price, style: AppTypography.popinsParagraphRegular),
            ),
            Positioned(
              left: 143,
              top: 208,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                    height: deviceHeight * 0.06,
                    width: deviceWidth * 0.12,
                    decoration: const BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColor.whiteColor,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
