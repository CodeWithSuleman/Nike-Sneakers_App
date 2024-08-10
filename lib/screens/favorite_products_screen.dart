import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';
import 'package:nike_sneakers/mock_data/mock_data.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';
import 'package:nike_sneakers/shared_widgets/favorite_circle.dart';
import 'package:nike_sneakers/shared_widgets/primary_appbar.dart';
import 'package:nike_sneakers/shared_widgets/primary_card.dart';

class FavoriteProductsScreen extends StatelessWidget {
  const FavoriteProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> favoriteProducts = MockData.favoriteProducts;
    return Scaffold(
      appBar: PrimaryAppBar(
        centerTitle: true,
        title: "Favorite",
        textStyle: AppTypography.ralewayheadingSemiLarge,
        actions: [
          CircleAvatar(
            backgroundColor: AppColor.whiteColor,
            radius: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.heart,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 28),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: favoriteProducts.length,
                  itemBuilder: (context, index) {
                    return PrimaryCard(
                      borderRadius: BorderRadius.circular(10),
                      image: favoriteProducts[index].shoeImage,
                      price: favoriteProducts[index].price.toString(),
                      shoeName: favoriteProducts[index].name,
                      onFavoriteTap: () {},
                      isFavorite: favoriteProducts[index].isFavorite,
                      shoeCategory: favoriteProducts[index].shoeCategory,
                      customFooter: const FavoriteCircle(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
