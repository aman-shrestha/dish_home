import 'package:dish_home/features/presentation/pages/create_account/view_model/create_account_view_model.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/forget_password_controller.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/otpVerificationController.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_controller.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_edit/kyc_edit_controller.dart';
import 'package:dish_home/features/presentation/pages/profile/profile_controller.dart';
import 'package:dish_home/getx_controller/home_controller.dart';

import 'package:get/get.dart';

class AppGetXController extends GetxController {
  final CreateAccountViewModel _createAccountViewModel =
      Get.put(CreateAccountViewModel());
  final LoginController _loginController = Get.put(LoginController());
  final OtpVerificationController otpVerificationController =
      Get.put(OtpVerificationController());
  final ForgetPasswordController forgetPasswordController =
      Get.put(ForgetPasswordController());
  final HomeController _homeController = Get.put(HomeController());
  final KycEditController _kycEditController = Get.put(KycEditController());
  final ProfileController _profileController = Get.put(ProfileController());
}
