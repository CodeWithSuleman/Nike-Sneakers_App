import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/screens/cart_screen.dart';
import 'package:nike_sneakers/screens/drawer.dart';
import 'package:nike_sneakers/screens/favorite_products_screen.dart';
import 'package:nike_sneakers/screens/shoe_details_screen.dart';
import 'package:nike_sneakers/shared_widgets/advertise_card.dart';
import 'package:nike_sneakers/shared_widgets/category_tile.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_card.dart';
import 'package:nike_sneakers/shared_widgets/primary_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Selected Category
  String selectedCategory = MockData().categoryList.first;
  List<ProductModel> productList = MockData().productsList;
  List<ProductModel> favoriteList = MockData.favoriteProducts;

  @override
  Widget build(BuildContext context) {
    print('Products List: ${MockData().productsList}');
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
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: deviceHeight * 0.02),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.blackColor.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    width: deviceWidth * 0.77,
                    child: PrimaryTextfield(
                      color: AppColor.whiteColor,
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
                  const CircleAvatar(
                      backgroundColor: AppColor.primaryColor,
                      radius: 28,
                      child: Icon(
                        Icons.horizontal_split,
                        color: AppColor.whiteColor,
                      ),),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              Row(
                children: [
                  SizedBox(width: deviceWidth * 0.04),
                  Text(
                    "Select category",
                    style: AppTypography.ralewayParagraphRegular
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),

              SizedBox(
                width: deviceWidth * 0.95,
                height: deviceHeight * 0.065,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: MockData().categoryList.length,
                  itemBuilder: (context, index) {
                    return CategoryTile(
                      title: MockData().categoryList[index],
                      isSelected:
                          selectedCategory == MockData().categoryList[index],
                      onSelectCategory: _onSelectCategory,
                    );
                  },
                ),
              ),

              /// slectedFileterTile = 'Tennis'
              /// List = [
              /// 'Tennis'
              /// 'Outdoor'
              /// 'Shoes'
              /// ];
              ///
              ///
              ///
              /// Listview.builder=> horizontally
              ///
              /// Filter Tile -> isSelected , onTap
              /// isSelected-> Strings == list[index] == selectedFilterTile,
              /// onTap () => selectedFilterTile = list[index]
              ///

              SizedBox(height: deviceHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Shoes",
                    style: AppTypography.ralewayParagraphRegular,
                  ),
                  Text(
                    "See all",
                    style: AppTypography.popinsParagraphRegularSmall
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.02),
              SizedBox(
                height: deviceHeight * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    ProductModel product = productList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ShoeDetailsScreen(productId: product.id),
                          ),
                        );
                      },
                      child: PrimaryCard(
                          image: product.shoeImage,
                          price: product.price.toString(),
                          shoeName: product.name,
                          shoeCategory: product.shoeCategory,
                          isFavorite: product.isFavorite,
                          onFavoriteTap: () {
                            // print('coming here');

                            /// remove this product from mockData
                            /// add same product with updated isFavorite variable
                            final _product = ProductModel(
                              id: product.id,
                              shoeCategory: product.shoeCategory,
                              shoeDescription: product.shoeDescription,
                              name: product.name,
                              price: product.price,
                              shoeImage: product.shoeImage,
                              isFavorite: !product.isFavorite,
                            );

                            productList
                                .replaceRange(index, index + 1, [_product]);

                            print(
                                '--> :${productList.map((e) => e.isFavorite)}');
                            if (product.isFavorite) {
                              favoriteList.remove(_product);
                              print("Removed");
                            } else {
                              favoriteList.add(_product);
                              print("ADDED");
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FavoriteProductsScreen(),
                              ),
                            );
                            setState(() {});
                          }),
                    );
                  },
                ),
              ),
              // ...favoriteList.map((e) {
              //   return Text(e.name);
              // }),

              // Text('======='),

              // ...MockData.favoriteProducts.map((e) {
              //   return Text(e.name);
              // }),

              SizedBox(height: deviceHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: AppTypography.ralewayParagraphRegular
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: AppTypography.popinsParagraphRegularSmall
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight * 0.01),
              const AdvertiseCard(
                discount: "15% OFF",
                sell: "SummerSell",
                shoe: AppImages.shoe005,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSelectCategory(String value) {
    setState(() {
      selectedCategory = value;
    });
  }
}
