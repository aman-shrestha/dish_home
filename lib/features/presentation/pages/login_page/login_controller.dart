import 'dart:convert';

import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_response_model.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  LoginResponseModel? loginResponseModel;
  String? phoneNumber;
  String? password;

  var isLoading = false.obs;
  var isLoggIn = false.obs;
  var loginData = LoginResponseModel.obs;
  final localData = GetStorage();

  Future userLogin(String phoneNumber, String password) async {
    isLoading.value = true;
    isLoggIn.value = true;
    Map<String, dynamic> loginBody = {
      "phone": "$phoneNumber",
      "password": "$password",
      "stay_signed_in": "true",
      "source": "mobile"
    };
    Future<http.Response> response =
        ApiClient().LoginAccount(LOGIN_USER, loginBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        loginResponseModel =
            LoginResponseModel.fromJson(jsonDecode(response.body));
        // loginData = LoginResponseModel(token: loginResponseModel.token,user: loginResponseModel.user);
        String accessToken = loginResponseModel!.token.accessToken;
        String refreshToken = loginResponseModel!.token.refreshToken;
        String email = loginResponseModel!.user.email;
        String name = loginResponseModel!.user.name;
        String phone = loginResponseModel!.user.phone;
        storeData(accessToken, refreshToken, email, name, phone);
        Get.rawSnackbar(
            message: "Login Successful",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        Future.delayed(Duration(seconds: 3));
        Get.offAll(HomeNavigation());
      } else {
        isLoggIn.value = false;
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Login Failed",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);

        Get.offAll(() => LoginPage());
      }
    });
  }

  Future userLoginwithCostumerId(String cid) async {
    isLoading.value = true;
    // isLoggIn.value = true;
    Map<String, dynamic> loginBody = {
      "source": "mobile",
      "loginType": "customerID",
      "customer_id": cid
    };
    Future<http.Response> response =
        ApiClient().LoginAccount(LOGIN_USER_WITH_CID, loginBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Otp has been sent successfully",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);

        Get.to(() => OtpVerification(
              forgetPhoneNumber: cid,
            ));
      } else {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Costumer Id is invalid",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }

// =======
// >>>>>>> 1bb28fb (profile done)
  void storeData(String acessToken, String refreshToken, String email,
      String name, String phone) {
    localData.write('isLoggedIn', true);
    localData.write('access_token', '$acessToken');
    localData.write('refresh_token', '$refreshToken');
    localData.write('email', '$email');
    localData.write('name', '$name');
    localData.write('phone', '$phone');
    print('acess Token =====>${acessToken}');
    isLoggIn.value = false;
    Get.offAll(HomeNavigation());
  }
}
