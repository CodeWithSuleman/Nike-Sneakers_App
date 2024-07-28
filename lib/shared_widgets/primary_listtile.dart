import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final Function() onTap;
  const PrimaryListTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: AppTypography.ralewayParagraphRegular
            .copyWith(color: AppColor.whiteColor),
      ),
      onTap: onTap,
    );
  }
}
