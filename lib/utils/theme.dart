import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

TextStyle get largeStyle {
  return TextStyle(
      fontSize: AppDimens.large.sp, color: Colors.black, fontFamily: 'SF');
}

//20
TextStyle get mediumStyle {
  return TextStyle(
      fontSize: AppDimens.medium.sp, color: Colors.black, fontFamily: 'SF');
}

//17
TextStyle get normalStyle {
  return TextStyle(
      fontSize: AppDimens.normal.sp, color: Colors.black, fontFamily: 'SF');
}

//15
TextStyle get smallStyle {
  return TextStyle(
      fontSize: AppDimens.small.sp, color: Colors.black, fontFamily: 'SF');
}

//14
TextStyle get miniStyle {
  return TextStyle(
      fontSize: AppDimens.mini.sp, color: Colors.black, fontFamily: 'SF');
}
