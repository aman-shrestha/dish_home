import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordController extends GetxController{
  var isLoading = false.obs;



  Future forgetPassword(String phoneNumber) async {
    isLoading.value = true;
   
    print("otp=====.....$phoneNumber");
    Map<String, dynamic> forgetBody = {"phone": phoneNumber};
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(FORGETURL, forgetBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
           isLoading.value = false;
   
          Get.rawSnackbar(
            message: "Otp has been sent successfully",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
       
        Get.to(() =>  OtpVerification(
              forgetPhoneNumber: phoneNumber,
            ));
      } else {
           isLoading.value = false;
   
        Get.rawSnackbar(
            message: "Phone number is invalid",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }


    
  Future changePassword(String password , String confirmPass, String resetToken) async {
     isLoading.value = true;
   
    Map<String, dynamic> changePasswordBody = {
      "resetToken":
          "$resetToken",
      "password": "$password",
      "confirm_password": "$confirmPass",
      "source":"mobile",
    };
    Future<http.Response> response =
        ApiClient().postRequest(CHANGEPASSWORDURL, changePasswordBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
         isLoading.value = false;
         print("resetToken=====.....$resetToken");
        Get.rawSnackbar(
            message: "Password has been changed",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
            Get.offAll(() => LoginPage());
      
      } else {
         isLoading.value = false;
        Get.rawSnackbar(
            message: "Failed Captcha Verification",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }
}