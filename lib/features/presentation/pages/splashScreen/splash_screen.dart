import 'package:dish_home/features/presentation/pages/splashScreen/splashController.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  final controller = Get.put(SplashController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/icons/Dish_logo.png",
          height: Dimension.logoHeight132,
          width: Dimension.logoHeight132,
        ),
      ),
    );
  }
}
