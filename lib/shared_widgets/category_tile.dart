import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function(String) onSelectCategory;

  const CategoryTile({
    super.key,
    required this.isSelected,
    required this.onSelectCategory,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        onSelectCategory(title);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: deviceWidth * 0.28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? AppColor.primaryColor : AppColor.whiteColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTypography.popinsParagraphRegularSmall.copyWith(
              color: isSelected
                  ? AppColor.whiteColor
                  : AppColor.blackColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
