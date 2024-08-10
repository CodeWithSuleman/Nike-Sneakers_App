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
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.redColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        minimumSize: Size(deviceWidth * 0.2, deviceHeight * 0.1),
        padding: EdgeInsets.zero,
      ),
      child: SizedBox(
        height: deviceHeight * 0.03,
        width: deviceWidth * 0.1,
        child: SvgPicture.asset(
          AppIcons.delete,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
