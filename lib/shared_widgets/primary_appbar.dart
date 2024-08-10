import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/typography.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final List<Widget>? actions;
  final String? title;
  final Widget? leading;
  final Color? color;
  final TextStyle? textStyle;

  const PrimaryAppBar({
    super.key,
    this.centerTitle,
    this.actions,
    this.title,
    this.leading,
    this.textStyle,
    this.color,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        backgroundColor: AppColor.whiteColor,
        centerTitle: centerTitle,
        title: Text(
          title ?? "",
          style: textStyle ?? AppTypography.ralewayheadingLarge,
        ),
        actions: actions,
        leading: leading ??
            CircleAvatar(
              backgroundColor: color ?? AppColor.whiteColor.withOpacity(0.1),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 17.0,
                ),
              ),
            ),
      ),
    );
  }
}
