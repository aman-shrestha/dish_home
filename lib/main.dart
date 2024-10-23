import 'package:dish_home/getx_controller/app_getxController.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'app/my_app.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  final AppGetXController controller = Get.put(AppGetXController());

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //          statusBarColor: Colors.white,
  //    ));

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ResponsiveSizer(builder: (context, orientation, screenType) {
    return MyApp();
  }));
}
 