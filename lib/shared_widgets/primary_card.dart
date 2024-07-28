import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryCard extends StatefulWidget {
  final String image;
  final String price;
  final String shoeName;
  final String shoeCategory;
  const PrimaryCard({
    super.key,
    required this.image,
    required this.price,
    required this.shoeName,
    required this.shoeCategory,
  });

  @override
  State<PrimaryCard> createState() => _PrimaryCardState();
}

class _PrimaryCardState extends State<PrimaryCard> {
  bool _isFavorite = false;
  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    print("Navigation");
  }

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
            IconButton(
              onPressed: _toggleFavorite,
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Colors.grey,
              ),
            ),
            Image.asset(
              widget.image,
              height: deviceHeight * 0.269,
              width: deviceWidth * 0.540,
            ),
            Positioned(
              left: 10,
              top: 180,
              child: Text(
                widget.shoeCategory,
                style: AppTypography.popinsParagraphRegular
                    .copyWith(color: AppColor.primaryColor),
              ),
            ),
            Positioned(
              left: 10,
              top: 200,
              child: Text(
                widget.shoeName,
                style: AppTypography.popinsParagraphRegular
                    .copyWith(color: AppColor.secondaryColor),
              ),
            ),
            Positioned(
              left: 10,
              top: 220,
              child: Text(widget.price,
                  style: AppTypography.popinsParagraphRegular,),
            ),
            Positioned(
              left: 143,
              top: 208,
              child: GestureDetector(
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
                    ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
