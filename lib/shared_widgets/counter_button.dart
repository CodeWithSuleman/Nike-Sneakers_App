// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:nike_sneakers/constants/app_color.dart';
// import 'package:nike_sneakers/constants/app_icons.dart';
// import 'package:nike_sneakers/constants/typography.dart';

// class CounterButton extends StatelessWidget {
//   final VoidCallback onPressedForPlus;
//   final String bText;
//   const CounterButton(
//       {super.key, required this.onPressedForPlus, required this.bText});

//   @override
//   Widget build(BuildContext context) {
//     final double buttonHeight = MediaQuery.of(context).size.height;
//     final double buttonWidth = MediaQuery.of(context).size.width;
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColor.primaryColor,
//         borderRadius: BorderRadius.circular(17),
//       ),
//       // width: buttonWidth * 0.1,
//       height: buttonHeight * 0.2,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressedForPlus: onPressedForPlus,
//             child: SvgPicture.asset(
//               AppIcons.add,
//               // height: buttonHeight * 0.03,
//             ),
//           ),
//           Text(
//             bText,
//             style: AppTypography.popinsParagraphRegularSmall
//                 .copyWith(color: AppColor.whiteColor),
//           ),
//           TextButton(
//             onPressedForPlus: onPressedForPlus,
//             child: SvgPicture.asset(
//               AppIcons.minus,
//               // width: buttonWidth * 0.1,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_sneakers/constants/app_color.dart';
import 'package:nike_sneakers/constants/app_icons.dart';
import 'package:nike_sneakers/constants/typography.dart';

class CounterButton extends StatelessWidget {
  final VoidCallback onPressedForPlus;
  final VoidCallback onPressedForMinus;
  final String bText;
  const CounterButton(
      {super.key,
      required this.onPressedForPlus,
      required this.bText,
      required this.onPressedForMinus});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.13,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 55,
            child: TextButton(
              onPressed: onPressedForPlus,
              child: SvgPicture.asset(
                AppIcons.add,
                height: deviceHeight * 0.02,
              ),
            ),
          ),
          Positioned(
            child: Text(
              bText,
              style: AppTypography.ralewayParagraphRegular.copyWith(
                  color: AppColor.whiteColor, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 55,
            child: TextButton(
              onPressed: onPressedForMinus,
              child: SvgPicture.asset(
                AppIcons.minus,
                width: deviceWidth * 0.07,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
