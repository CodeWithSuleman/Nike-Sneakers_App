import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/screens/bottom_nav_bar.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_listtile.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List<ProductModel> productList = MockData().productsList;
  List<ProductModel> myCart = MockData.myCart;
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PrimaryAppBar(
        centerTitle: true,
        title: "My Cart",
        textStyle: AppTypography.ralewayheadingSemiLarge,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 1, right: 14, top: 46),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: deviceWidth * 0.06),
                  const Text(
                    "Contact Information",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                ],
              ),
              PrimaryListTile(
                leading: const Icon(Icons.email_outlined),
                title: "emmanueloyiboke@gmail.com",
                trailing: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(AppIcons.edit),
                ),
                subTitle: const Text("Email"),
                titleTextStyle: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor,
                ),
                subTextStyle:
                    AppTypography.popinsParagraphRegularSmall.copyWith(
                  fontSize: 12,
                  color: AppColor.greyColor,
                ),
              ),
              PrimaryListTile(
                leading: SvgPicture.asset(AppIcons.phone),
                title: "+234-811-732-5298",
                trailing: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(AppIcons.edit),
                ),
                subTitle: const Text("Phone"),
                titleTextStyle: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor,
                ),
                subTextStyle:
                    AppTypography.popinsParagraphRegularSmall.copyWith(
                  fontSize: 12,
                  color: AppColor.greyColor,
                ),
              ),
              ExpansionTile(
                subtitle: Text(
                  "1082 Airport Road, Nigeria",
                  style: AppTypography.popinsParagraphRegularSmall
                      .copyWith(fontSize: 12, color: AppColor.greyColor),
                ),
                title: Text(
                  "Address",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                    color: AppColor.blackColor,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Image.asset(AppImages.map),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                children: [
                  SizedBox(width: deviceWidth * 0.06),
                  const Text(
                    "Payment Method",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.01),
              ExpansionTile(
                subtitle: Text(
                  "*******0696-4629",
                  style: AppTypography.popinsParagraphRegularSmall
                      .copyWith(fontSize: 12, color: AppColor.greyColor),
                ),
                title: Text(
                  "DbL Card",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                    color: AppColor.blackColor,
                  ),
                ),
                leading: Image.asset(AppImages.debitCard),
                children: [],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        color: AppColor.whiteColor,
        height: deviceHeight * 0.3,
        width: deviceWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: AppTypography.ralewayParagraphRegular
                      .copyWith(color: AppColor.greyColor),
                ),
                Text(
                  "\$${myCart.fold(0, (sum, item) => sum + item.totalAmount)}",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                      color: AppColor.blackColor, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: AppTypography.ralewayParagraphRegular
                      .copyWith(color: AppColor.greyColor),
                ),
                Text(
                  "\$60.02",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                    color: AppColor.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: deviceHeight * 0.05,
              thickness: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Cost",
                  style: AppTypography.ralewayParagraphRegular.copyWith(
                    color: AppColor.greyColor,
                  ),
                ),
                Text(
                  "\$ ${myCart.fold(0, (sum, item) => sum + item.totalAmount) + 60}",
                  style: AppTypography.popinsParagraphRegular.copyWith(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.009),
            PrimaryButton(
              onPressed: () {
                showDialog(
                    barrierColor: Colors.black.withOpacity(0.5),
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: CircleAvatar(
                          radius: 60,
                          child: Image.asset(AppImages.paymentSuccessful),
                        ),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your Payment Is \n\t\t\t\tSuccessful",
                              style: AppTypography.ralewayheadingSemiLarge
                                  .copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                        actions: [
                          Center(
                            child: PrimaryButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBarScreen(),
                                  ),
                                );
                              },
                              text: "Back to Shopping",
                              width: deviceWidth * 0.6,
                              textColor: AppColor.whiteColor,
                              color: AppColor.primaryColor,
                            ),
                          )
                        ],
                      );
                    });
              },
              text: "Checkout",
              color: AppColor.primaryColor,
              textColor: AppColor.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
