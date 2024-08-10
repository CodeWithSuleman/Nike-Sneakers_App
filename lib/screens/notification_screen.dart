import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_listtile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<ProductModel> productsList = MockData().productsList;
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PrimaryAppBar(
        centerTitle: true,
        title: "Notifications",
        textStyle: AppTypography.ralewayheadingSemiLarge,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppIcons.delete,
                colorFilter: const ColorFilter.mode(
                  AppColor.blackColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 19, right: 19, bottom: 25),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Recent",
                  style: AppTypography.ralewayheadingSemiLarge
                      .copyWith(fontSize: 18),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                    itemCount: productsList.length,
                    itemBuilder: (context, index) {
                      final discount = productsList[index].price / 1.5;
                      return Container(
                        height: deviceHeight * 0.15,
                        margin:  const EdgeInsets.symmetric(vertical: 8),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: PrimaryListTile(
                          leading: Image.asset(
                            productsList[index].shoeImage,
                            fit: BoxFit.contain,
                          ),
                          title: "We Have New\nProducts With Offers",
                          subTitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "\$${productsList[index].price.toString()}",
                                style: AppTypography.popinsParagraphRegularSmall
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              // Spacer(),
                              Text(
                                "\$${discount.toStringAsFixed(1)}",
                                style: AppTypography.popinsParagraphRegularSmall
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.greyColor),
                              ),
                            ],
                          ),
                          trailing: const Text('7 min ago'),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
