import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryCard extends StatelessWidget {
  final String image;
  final String price;
  final String shoeName;
  final String shoeCategory;
  final Function() onFavoriteTap;
  final BorderRadiusGeometry? borderRadius;
  final Widget? customFooter;
  final bool isFavorite;
  final double? cardHight;
  final double? cardWidth;
  const PrimaryCard({
    super.key,
    required this.image,
    required this.price,
    required this.shoeName,
    required this.onFavoriteTap,
    required this.isFavorite,
    required this.shoeCategory,
    this.customFooter,
    this.borderRadius,
    this.cardHight,
    this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: cardHight ?? deviceHeight * 0.340,
      width: cardWidth ?? deviceWidth * 0.540,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              const BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
        ),
        color: AppColor.whiteColor,
        child: Container(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: onFavoriteTap,
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? AppColor.redColor : AppColor.greyColor,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  // fit: BoxFit.fitWidth,
                  fit: BoxFit.fitHeight,
                  image,
                  // width: 140,
                  height: deviceHeight * 0.16,
                ),
              ),
              const Spacer(),
              Text(
                shoeCategory,
                style: AppTypography.popinsParagraphRegularSmall
                    .copyWith(color: AppColor.primaryColor),
              ),
              Text(
                shoeName,
                style: AppTypography.ralewayParagraphRegular.copyWith(
                  color: AppColor.blackColor.withOpacity(0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: AppTypography.popinsParagraphRegular,
                  ),
                  customFooter ??
                      GestureDetector(
                        onTap: () {},
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
