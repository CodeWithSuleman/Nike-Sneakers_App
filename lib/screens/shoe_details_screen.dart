import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/screens/cart_screen.dart';
import 'package:nike_sneakers/shared_widgets/arrow_button.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_button.dart';

class ShoeDetailsScreen extends StatefulWidget {
  final int productId;

  const ShoeDetailsScreen({super.key, required this.productId});

  @override
  State<ShoeDetailsScreen> createState() => _ShoeDetailsScreenState();
}

class _ShoeDetailsScreenState extends State<ShoeDetailsScreen> {
  final PageController _pageController = PageController();

  List<ProductModel> productsList = MockData().productsList;
  List<ProductModel> cartList = MockData.myCart;

  /// getting product index
  int productIndex = 0;
  @override
  void initState() {
    productIndex = productsList.indexWhere((e) => e.id == widget.productId);
    super.initState();
  }

  void onNextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    productIndex++;
    if (productsList.length > 0) return setState(() {});
  }

  void onPreviousPage() {
    _pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    productIndex--;
    if (productsList.length < 0) return setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PrimaryAppBar(
        color: AppColor.whiteColor,
        title: "Sneaker Shop",
        textStyle: AppTypography.ralewayheadingSemiLargeMedium
            .copyWith(fontWeight: FontWeight.bold),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: AppColor.whiteColor,
            radius: 40,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                AppIcons.cart,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productsList[productIndex].name,
                style: AppTypography.ralewayheadingLarge,
              ),
              Text(
                productsList[productIndex].shoeCategory,
                style: AppTypography.ralewayParagraphRegular
                    .copyWith(color: AppColor.greyColor),
              ),
              Text(
                productsList[productIndex].price.toString(),
                style: AppTypography.popinsParagraphRegular.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: deviceHeight * 0.01),
              SizedBox(
                height: deviceHeight * 0.3,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: MockData().productsList.length,
                  itemBuilder: (context, index) {
                    productIndex = index;
                    final productsList = MockData().productsList[index];
                    return Center(
                      child: Image.asset(
                        // semanticsLabel: 'shoe-image',
                        height: deviceHeight * 0.25,
                        width: deviceWidth * 0.9,
                        productsList.shoeImage,
                        // AppImages.shoe,
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: deviceHeight * 0.02),
              Center(
                child:
                    ArrowButton(onNext: onNextPage, onPrevious: onPreviousPage),
              ),
              SizedBox(height: deviceHeight * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  children: [
                    SizedBox(
                        height: deviceHeight * 0.08,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: productsList.length,
                          itemBuilder: (context, index) {
                            final bool isSelected = productIndex == index;
                            return Container(
                              height: deviceHeight * 0.08,
                              width: deviceWidth * 0.2,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColor.redColor
                                    : AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(productsList[index].shoeImage),
                            );
                          },
                        )),
                    SizedBox(height: deviceHeight * 0.03),
                    SizedBox(
                      width: deviceWidth * 0.9,
                      height: deviceHeight * 0.08,
                      child: Text(
                        MockData().productsList[productIndex].shoeDescription,
                        style: AppTypography.popinsParagraphRegularSmall
                            .copyWith(color: AppColor.greyColor),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Read More",
                            style:
                                AppTypography.popinsParagraphRegular.copyWith(
                              color: AppColor.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                AppColor.lightGreyColor.withOpacity(0.1),
                            child: SvgPicture.asset(AppIcons.heart),
                          ),
                        ),
                        SizedBox(width: deviceWidth * 0.06),
                        PrimaryButton(
                          width: deviceWidth * 0.55,
                          onPressed: () {
                            print("I ma here");
                            ProductModel product = productsList[productIndex];
                            final _product = ProductModel(
                              id: product.id,
                              shoeCategory: product.shoeCategory,
                              shoeDescription: product.shoeDescription,
                              name: product.name,
                              price: product.price,
                              shoeImage: product.shoeImage,
                              isFavorite: !product.isFavorite,
                            );
                            productsList.replaceRange(
                                productIndex, productIndex + 1, [_product]);
                            if (product.isFavorite) {
                              cartList.remove(_product);
                              print("remove");
                            } else {
                              cartList.add(_product);
                              print("added");
                            }
                            setState(() {});
                          },
                          text: "Add to Cart",
                          textColor: AppColor.whiteColor,
                          icon: SvgPicture.asset(
                            AppIcons.cart,
                            colorFilter: const ColorFilter.mode(
                              AppColor.whiteColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          color: AppColor.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
