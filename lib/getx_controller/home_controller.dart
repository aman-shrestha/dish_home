import 'dart:convert';

import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/app/model/get_profile_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var profileData = ProfileResponseModel().obs;
  ProfileResponseModel? profileResponseModel;
  var name = "".obs;
  var email = "".obs;
  var phone = "".obs;
  var profileImage = "".obs;
  var documentsList =[].obs;

  void fetch() {
    getProfile();
  }

  void getProfile() async {
    // var kycBody = jsonEncode(body);
    Future<http.Response> response = ApiClient().getRequest(
      getProfileUrl,
    );
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Get.to(KYCView());
        print('Profile data =====> ${response.body}');
        profileResponseModel =
            ProfileResponseModel.fromJson(jsonDecode(response.body));
        // profileData.value=ProfileResponseModel(

        // )
        name.value = profileResponseModel!.name.toString();
        email.value = profileResponseModel!.email.toString();
        phone.value = profileResponseModel!.phone.toString();
        profileImage.value =
            profileResponseModel!.profileImage.toString(); // update();

        print("name:::::::::::::" + profileImage.value);
        phone.value = profileResponseModel!.phone.toString(); // update();
        documentsList.value=profileResponseModel!.documents!.toList();
        print("name:::::::::::::" + name.value);
        // update();
      } else {
        print("error");
        // Get.offAll(() => LoginPage());
      }
    });
  }
}
