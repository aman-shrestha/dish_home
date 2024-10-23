import 'dart:convert';

import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/change_password_page.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/forgetverify_otp_ResponseModel.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OtpVerificationController extends GetxController {
  var isLoading = false.obs;

  Future verifyOtpThroughRegister(String phoneNumber, String otp) async {
    isLoading.value = true;

    print("otp=====.....$otp");
    print("otp=====.....$phoneNumber");
    Map<String, dynamic> verifyBody = {
      "type": "phone",
      "customer_id": "22455",
      "phone": "$phoneNumber",
      "otp": int.parse(otp),
      // "otp": 123456,
    };
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(OTPURL, verifyBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;

        Get.rawSnackbar(
            message: "Register Successful",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        Get.off(() => LoginPage());
      } else {
        isLoading.value = false;

        Get.rawSnackbar(
            message: "Register Failed",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        Get.offAll(() => LoginPage());
      }
    });
  }

  Future verifyOtpThroughForgetPassword(String phoneNumber, String otp) async {
    isLoading.value = true;
    print("otp=====.....$otp");
    print("otp=====.....$phoneNumber");
    Map<String, dynamic> verifyBody = {"phone": phoneNumber, "otp": otp};
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(FORGETVERIFYOTP, verifyBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Otp has verified",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        ForgetVerifyOtpResponse forgetVerifyOtpResponse =
            ForgetVerifyOtpResponse.fromJson(jsonDecode(response.body));

        print("RESETTOKEN ========${forgetVerifyOtpResponse.data.resetToken}");
        String resetToken = forgetVerifyOtpResponse.data.resetToken;

        Get.off(() => ChangePassword(
              resetToken: resetToken,
            ));
      } else {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Invalid Otp",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }

  Future verifyOtpThroughCostumerId(String phoneNumber, String otp) async {
    isLoading.value = true;
    print("otp=====.....$otp");
    print("otp=====.....$phoneNumber");
    Map<String, dynamic> verifyBody = {
      "type": "customerID",
      "customer_id": "15769",
      "otp": 123456
    };
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(FORGETVERIFYOTP, verifyBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Otp has verified",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        ForgetVerifyOtpResponse forgetVerifyOtpResponse =
            ForgetVerifyOtpResponse.fromJson(jsonDecode(response.body));

        print("RESETTOKEN ========${forgetVerifyOtpResponse.data.resetToken}");
        String resetToken = forgetVerifyOtpResponse.data.resetToken;

        Get.off(() => ChangePassword(
              resetToken: resetToken,
            ));
      } else {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Invalid Otp",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }

  Future resendOtp(String phoneNumber) async {
    Map<String, dynamic> resendBody = {
      "type": "phone",
      "customer_id": "22455",
      "phone": "$phoneNumber"
    };
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(RESEND_OTP, resendBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.rawSnackbar(
            message: "Otp has been sent",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        // Get.off(() => LoginPage());
      } else {
        Get.rawSnackbar(
            message: "Please verify again",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        Get.offAll(() => LoginPage());
      }
    });
  }
}
