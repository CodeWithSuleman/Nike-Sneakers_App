import 'package:flutter/material.dart';

class PrimaryListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String title;
  final Widget? subTitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subTextStyle;
  final Color? textColor;
  final Function()? onTap;
  const PrimaryListTile(
      {super.key,
      required this.leading,
      required this.title,
      this.onTap,
      this.trailing,
      this.subTitle,
      this.textColor,
      this.titleTextStyle,
      this.subTextStyle, });

  @override
  Widget build(BuildContext context) {
    // final double deviceHeight = MediaQuery.of(context).size.height;
    // final double deviceWidth = MediaQuery.of(context).size.width;
    return ListTile(
      subtitleTextStyle: subTextStyle,
      titleTextStyle: titleTextStyle,
      textColor: textColor,
      leading: leading,
      title: Text(title),
      
      onTap: onTap,
      trailing: trailing,
      subtitle: subTitle,
    );
  }
}
