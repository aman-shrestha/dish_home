import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomRow({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmallTxt(
          text: text1,
          color: Color.fromRGBO(71, 84, 103, 1),
        ),
        SmallTxt(
          text: text2,
        ),
      ],
    );
  }
}

class CustomRowWithIcons extends StatelessWidget {
  final IconData icons;
  final String text1;
  final String text2;
  final Color? color;
  const CustomRowWithIcons(
      {super.key,
        required this.text1,
        required this.text2,
        required this.icons,
        this.color = AppColors.grey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(children: [
          Icon(
            icons,
            size: Dimension.icon24 * 1.1,
          ),
          SizedBox(width: Dimension.height10),
          Text(
            text1,
            style: smallStyle.copyWith(color: AppColors.grey),
          )
          // SmallTxt(
          //   text: text1,
          //   color: AppColors.textColors,
          //   size: Dimension.font18,
          // ),
        ]),
        SizedBox(width: Dimension.height10),
        Text(
          text2,
          style: smallStyle.copyWith(color: color),
        )
      ],
    );
  }
}