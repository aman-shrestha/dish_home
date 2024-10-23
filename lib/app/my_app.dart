// ignore_for_file: prefer_const_constructors

import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/order_page/order_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Dish Home',
          debugShowCheckedModeBanner: false,
          theme: ThemeData()
              .copyWith(scaffoldBackgroundColor: AppColors.whiteGrey),
          initialRoute: RouteHelper.getInitial(),
          getPages: RouteHelper.routes,
        );
      },
    );
  }
}
