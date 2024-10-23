import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final localData = GetStorage();

  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    delayAndGo();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void delayAndGo() async {
    await Future.delayed(
      Duration(seconds: 2),
    );

    if (localData.read('isLoggedIn') == true) {
      Get.offAll(() => HomeNavigation(), transition: Transition.topLevel);
    } else {
      Get.offAll(() => LoginPage(), transition: Transition.topLevel);
    }
  }
}
