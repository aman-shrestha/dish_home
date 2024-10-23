import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/api/result.dart';
import 'package:dish_home/utils/apiErrorConstant.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/prefUtils.dart';
import 'package:dish_home/utils/prefs_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final localData = GetStorage();

  // var responseData = ResponseModel().obs;
  // var refreshTokenData = RefreshTokenModel().obs;
  // final localData = GetStorage();

  //get method
  Future<http.Response> getRequest(String url) async {
    try {
      var response = await http.get(
        Uri.parse(url),
        headers: {
          HttpHeaders.authorizationHeader:
              'Bearer ' + localData.read('access_token'),
          "content-type": "application/json",
        },
      );
      print("GETResponse::::::::${response.body}");
      if (response.statusCode == 403) {
        // refreshToken();
        // Get.offAll(() => LoginView());
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (response.statusCode != 200) {
        Get.rawSnackbar(
            message: "Error",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
      return response;
    } catch (error, stackTrace) {
      print('An error occurred: $error');
      print('Stack trace: $stackTrace');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }
  Future<http.Response> delete(String url) async {
    try {
      var response = await http.delete(
        Uri.parse(url),
        headers: {
          HttpHeaders.authorizationHeader:
          'Bearer ' + localData.read('access_token'),
          "content-type": "application/json",
        },
      );
      print("GETResponse::::::::${response.body}");
      if (response.statusCode == 403) {
        // refreshToken();
        // Get.offAll(() => LoginView());
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (response.statusCode != 200) {
        Get.rawSnackbar(
            message: "Error",
            backgroundColor: AppColors.redColor,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
      return response;
    } catch (error, stackTrace) {
      print('An error occurred: $error');
      print('Stack trace: $stackTrace');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

  Future patchFormRequestWithFile(String url, dynamic data) async {
    try {
      final response = await Dio().patch(url,
          data: data,
          options: Options(headers: {
            "authorization": 'Bearer ' + localData.read('access_token'),
            "content-type": "application/json",
          }));
      print(response.data);
      if (response.statusCode == 200) {
        Get.rawSnackbar(
          message: 'Profile Update Succesfully',
          backgroundColor: AppColors.green,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.TOP,
        );
      } else {
        //BotToast is a package for toasts available on pub.dev
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );

        return false;
      }
    } catch (_) {
      log(_.toString());
      throw 'Something Went Wrong';
    }
  }

  Future postFormRequestWithFile(String url, dynamic data) async {
    try {
      final response = await Dio().post(url,
          data: data,
          options: Options(headers: {
            "authorization": 'Bearer ' + localData.read('access_token'),
            "content-type": "application/json",
          }));
      print(response.data);
      if (response.statusCode == 200) {
        Get.rawSnackbar(
          message: 'Profile Update Succesfully',
          backgroundColor: AppColors.green,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.TOP,
        );
      } else {
        //BotToast is a package for toasts available on pub.dev
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );

        return false;
      }
    } catch (_) {
      log(_.toString());
      throw 'Something Went Wrong';
    }
  }

  //post method
  Future<http.Response> postRequest(
      String url, Map<String, dynamic> body) async {
    try {
      var response = await http.post(Uri.parse(url),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer ' + localData.read('access_token'),
            "content-type": "application/json",
          },
          body: jsonEncode(body));
      print("Response::::::::${response.body}");

      if (response.statusCode == 403) {
        // refreshToken();
        // Get.offAll(() => LoginView());
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (response.statusCode > 201) {
        // showErrorMessage(response);
        Get.rawSnackbar(
            message: "Error",
            backgroundColor: Colors.white,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
      return response;
    } catch (error) {
      print('An error occurred: $error');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

  Future<http.Response> postFormRequest(String url, dynamic body) async {
    try {
      var response = await http.post(Uri.parse(url),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer ' + localData.read('access_token'),
            "content-type": "application/json",
          },
          body: jsonEncode(body));
      print("Response::::::::${response.body}");

      if (response.statusCode == 403) {
        // refreshToken();
        // Get.offAll(() => LoginView());
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.redColor,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (response.statusCode > 201) {
        // showErrorMessage(response);
        Get.rawSnackbar(
            message: "Error",
            backgroundColor: Colors.white,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
      return response;
    } catch (error) {
      print('An error occurred: $error');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

  //post request without token

  Future<http.Response> postRequestWithoutToken(
      String url, Map<String, dynamic> body) async {
    try {
      var jsonData = jsonEncode(body); // Convert the data to a JSON string
      var response = await http.post(Uri.parse(url),
          headers: {
            "content-type": "application/json",
          },
          body: jsonData); // Use the JSON string as the request body
      print("Response:${response.body}");
      var resultMessage = json.decode(response.body);
      if (response.statusCode > 201) {
        var resultMessage = json.decode(response.body);
        // showErrorMessage(response);
        print(resultMessage);
        // Get.rawSnackbar(
        //       message: "${resultMessage['message']}",
        //       backgroundColor: AppColors.redColor,
        //       duration: Duration(seconds: 2),
        //       animationDuration: Duration(milliseconds: 100),
        //       snackPosition: SnackPosition.BOTTOM);
      } else {
        print(resultMessage['message'].toString() == null
            ? ""
            : "${resultMessage['message']}");
        //  Get.rawSnackbar(
        //       message:resultMessage['message'].toString() == null ?"": "${resultMessage['message']}",
        //       backgroundColor: AppColors.green,
        //       duration: Duration(seconds: 2),
        //       animationDuration: Duration(milliseconds: 100),
        //       snackPosition: SnackPosition.TOP);
      }

      return response;
    } catch (error) {
      print('An error occurred: $error');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

  Future<http.Response> LoginAccount(
      String url, Map<String, dynamic> body) async {
    print(body);
    try {
      var jsonData = body; // Convert the data to a JSON string
      var response = await http.post(Uri.parse(url), body: jsonData);
      // Use the JSON string as the request body
      print("Response:${response.body}");
      if (response.statusCode > 201) {
        // showErrorMessage(response);
      }
      var resultMessage = json.decode(response.body);
      //  if (resultMessage['success'] == true) {
      //   Get.rawSnackbar(
      //       message: "${resultMessage['message']}",
      //       backgroundColor: AppColors.green,
      //       duration: Duration(seconds: 2),
      //       animationDuration: Duration(milliseconds: 100),
      //       snackPosition: SnackPosition.TOP);
      // } else {
      //   Get.rawSnackbar(
      //       message: "${resultMessage['message']}",
      //       backgroundColor: AppColors.redColor,
      //       duration: Duration(seconds: 2),
      //       animationDuration: Duration(milliseconds: 100),
      //       snackPosition: SnackPosition.BOTTOM);
      // }
      print(resultMessage);
      return response;
    } catch (error) {
      print('An error occurred: $error');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

  Future<http.Response> patchRequest(
      String url, Map<String, dynamic> body) async {
    try {
      var response = await http.patch(Uri.parse(url),
          headers: {
            HttpHeaders.authorizationHeader:
                'Bearer ' + localData.read('access_token'),
          },
          body: body);
      print("res:" + response.body);

      if (response.statusCode == 401) {
        // refreshToken();
        // Get.offAll(() => LoginView());
        Get.rawSnackbar(
          message: 'Token Expired Please Login Again',
          backgroundColor: AppColors.grey,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (response.statusCode > 201) {
        // showErrorMessage(response);
        Get.rawSnackbar(
            message: "Error",
            backgroundColor: AppColors.grey,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
      return response;
    } catch (error) {
      print('An error occurred: $error');
      throw error; // Rethrow the error to propagate it to the caller
    }
  }

// }
}
