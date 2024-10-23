import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as formDataMap;

class ProfileController extends GetxController {
  var isLoading = false.obs;

  Future updateUserProfileForm(formDataMap.FormData formData) async {
    isLoading.value = true;
    // var kycBody = jsonEncode(body);
    var response =
        await ApiClient().postFormRequestWithFile(userProfileUpdate, formData);
    isLoading.value = false;
    Get.offAll(HomeNavigation());
  }

  Future uploadUserCitizenShipForm(formDataMap.FormData formData) async {
    isLoading.value = true;
    // var kycBody = jsonEncode(body);
    Response response = await ApiClient()
        .patchFormRequestWithFile(uploadCitizenshipUrl, formData);
    print(response.body);

    isLoading.value = false;
  }
}
