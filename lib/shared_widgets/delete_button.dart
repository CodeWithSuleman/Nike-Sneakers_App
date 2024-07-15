import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';

class DeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DeleteButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.2,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: SvgPicture.asset(AppIcons.delete)),
    );
  }
}
