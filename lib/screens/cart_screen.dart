import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/screens/chekout_screen.dart';
import 'package:nike_sneakers/shared_widgets/counter_button.dart';
import 'package:nike_sneakers/shared_widgets/delete_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_listtile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ProductModel> productList = MockData().productsList;
  List<ProductModel> myCart = MockData.myCart;

  @override
  Widget build(BuildContext context) {
    print(myCart);
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PrimaryAppBar(
        centerTitle: true,
        title: "My Cart",
        textStyle: AppTypography.ralewayheadingSemiLarge,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: myCart.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: deviceHeight * 0.17,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: deviceWidth * 0.15,
                          child: CounterButton(
                            onPressedForMinus: () {
                              print("I am Minus");
                              if (productList[index].quantity == 1) {
                                return;
                              } else {
                                productList[index].quantity--;
                              }
                              setState(() {});
                            },
                            bText: '${productList[index].quantity}',
                            onPressedForPlus: () {
                              print("I am Plus");
                              productList[index].quantity++;
                              setState(() {});
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: PrimaryListTile(
                                // subTextStyle:
                                //     AppTypography.popinsParagraphRegular,
                                // titleTextStyle: AppTypography
                                //     .ralewayParagraphRegular
                                //     ,
                                leading: Image.asset(
                                  myCart[index].shoeImage,
                                  height: deviceHeight * 0.06,
                                  fit: BoxFit.fitHeight,
                                ),
                                title: productList[index].name,
                                subTitle: Text(
                                    "\$ ${productList[index].price.toString()}"),
                              )),
                        ),
                        SizedBox(
                          width: deviceWidth * 0.15,
                          height: deviceHeight * 0.13,
                          child: DeleteButton(
                            onPressed: () {
                              print("I am delete");

                              myCart.remove(myCart[index]);
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutScreen(),
                  ),
                );
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
