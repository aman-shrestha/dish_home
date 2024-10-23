import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? textColor;
  Color borderColor;
  final double? height;
  final double? width;
  final Color color;
  final String text;
 bool? isLoading ;
  CustomButton({
    super.key,
    required this.color,
    this.height,
    this.width,
    required this.text,
    this.onTap,
    this.textColor,
    this.isLoading=false,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 114,
        height: height ?? 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.radius10),
          border: Border.all(
            color: borderColor,
          ),
          color: color,
        ),
        child: Center(
          child:  isLoading !?Container(height: 20,
          width: 20,
            child: CircularProgressIndicator(color: AppColors.pureWhite,
            strokeWidth: 3,
            
            ),
          ):SmallTxt(
            text:text,
            size: Dimension.font16,
            color: textColor ?? AppColors.whiteGrey,
          ),
        ),
      ),
    );
  }
}
