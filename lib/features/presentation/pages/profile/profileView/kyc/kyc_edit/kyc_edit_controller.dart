import 'dart:convert';

import 'package:dish_home/api/api_client.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class KycEditController extends GetxController{

  var isLoading = false.obs;
  var  iskycLoading = false.obs;


   final TextEditingController cid = TextEditingController();
  final TextEditingController vOtp = TextEditingController();
  final TextEditingController billName = TextEditingController();
  final TextEditingController billProvince = TextEditingController();
  final TextEditingController billDistrict = TextEditingController();
  final TextEditingController billMunicipality = TextEditingController();
  final TextEditingController billStreet = TextEditingController();
  final TextEditingController billAddress = TextEditingController();
  final TextEditingController shipName = TextEditingController();
  final TextEditingController shipProvince = TextEditingController();
  final TextEditingController shipDistrict = TextEditingController();
  final TextEditingController shipMunicipality = TextEditingController();
  final TextEditingController shipStreet = TextEditingController();
  final TextEditingController shipAddress = TextEditingController();

   Future getOtpFromCid(String cid)async{
     isLoading.value = true;
     var cidBody = {
    "customer_id": "$cid"
};
    Future<http.Response> response =
        ApiClient().postRequest(GET_COSTUMER_ID, cidBody);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        print("Response=====.....$response");
        Get.rawSnackbar(
            message: "Otp Sent",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        
      } else {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "This customer id is linked with another user account!",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
     

   }
     Future verifyOtpFromCid(String cid,String otp) async {
         isLoading.value = true;
    var vcidBody = {"otp": int.parse(otp), "customer_id": "$cid"};
    Future<http.Response> response =
        ApiClient().postRequest(VERIFY_COSTUMER_ID, vcidBody);
    response.then((http.Response response) {
        if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        print("Response=====.....$response");
        Get.rawSnackbar(
            message: "Verified",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
      } else {
        isLoading.value = false;
        Get.rawSnackbar(
            message: "Not Verified",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    
    });
  }

  Future postKycBillingForm( body) async {
         iskycLoading.value = true;
    // var kycBody = jsonEncode(body);
    Future<http.Response> response =
        ApiClient().postRequest(kycEditFormUrl, body);
    response.then((http.Response response) {
       if (response.statusCode == 200 || response.statusCode == 201) {
        iskycLoading.value = false;
        print("Response=====.....$response");
        Get.rawSnackbar(
            message: "Kyc Updated Successfully",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
            Future.delayed(Duration(seconds:3));
        // Get.to(KYCView());
      } else {
        iskycLoading.value = false;
        Get.rawSnackbar(
            message: "kyc Liscense Expired",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }

  Future postUserProfileUpdateForm(body) async {
    iskycLoading.value = true;
    // var kycBody = jsonEncode(body);
    Future<http.Response> response =
        ApiClient().postRequest(kycEditFormUrl, body);
    response.then((http.Response response) {
      if (response.statusCode == 200 || response.statusCode == 201) {
        iskycLoading.value = false;
        print("Response=====.....$response");
        Get.rawSnackbar(
            message: "Kyc Updated Successfully",
            backgroundColor: AppColors.green,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.TOP);
        Future.delayed(Duration(seconds: 3));
        // Get.to(KYCView());
      } else {
        iskycLoading.value = false;
        Get.rawSnackbar(
            message: "kyc Liscense Expired",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        // Get.offAll(() => LoginPage());
      }
    });
  }

 
    
}