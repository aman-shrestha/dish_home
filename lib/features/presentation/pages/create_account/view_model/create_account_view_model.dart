import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/api/result.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class CreateAccountViewModel extends GetxController {
  String? fullName;
  String? email;
  String? password;
  String? cnfPassword;
  String? phoneNumber;
  var isSigningIn = false.obs;
  var isLoading = false.obs;

  Future register(String fullName, String email, String password,
      String cnfPassword, String phoneNumber) async {
    isSigningIn.value = true;
    isLoading.value = true;

    Map<String, dynamic> body = {
      "name": fullName,
      "phone": phoneNumber,
      "password": password,
      "confirm_password": cnfPassword,
      "email": email,
      "source": "mobile"
    };
    Future<http.Response> response =
        ApiClient().postRequestWithoutToken(REGISTER_USER, body);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isSigningIn.value = false;
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Otp has sent",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        Get.to(() => OtpVerification(
              phoneNumber: phoneNumber,
              // forgetPhoneNumber: "",
            ));
      } else {
        isSigningIn.value = false;
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

    // Navigator.push(context,
    //     MaterialPageRoute(builder: (ctx) => const LoginPage()));

    // var result = await _controller.registerUser(body);

    // Navigator.push(
    //     context, MaterialPageRoute(builder: (ctx) => const LoginPage()));
  }
}
