import 'package:flutter/material.dart';
import 'package:nike_sneakers/constants/app_color.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final List<Widget>? actions;
  final String? title;
  final Widget? leading;

  const PrimaryAppBar({
    super.key,
    this.centerTitle,
    this.actions,
    this.title,
    this.leading,
  });

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        centerTitle: centerTitle,
        title: Text(title ?? ""),
        actions: actions,
        leading: leading ??
            CircleAvatar(
              backgroundColor: AppColor.blackColor.withOpacity(0.1),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
      ),
    );
  }
}
