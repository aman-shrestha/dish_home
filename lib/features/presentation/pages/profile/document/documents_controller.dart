import 'dart:io';
import 'package:dish_home/api/api_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../../../../api/api_client.dart';
import '../../../../../getx_controller/home_controller.dart';

class DocumentsController extends GetxController {
  var isDataLoading = false.obs;
  final localData = GetStorage();
  final homecontroller = Get.find<HomeController>();

  uploadImage(File image) async {
    print("upload image called");
    isDataLoading.value = true;

    try {
      var request =
      http.MultipartRequest('PATCH', Uri.parse(UPLOADDOCUMENTURL));
      request.headers.addAll(
          {"Authorization": 'Bearer ' + localData.read('access_token')});

      // Ensure the field name matches the server's expectation
      request.files
          .add(await http.MultipartFile.fromPath('documents', image.path));

      var response = await request.send();
      var responseData = await response.stream.bytesToString();

      if (response.statusCode == 200 || response.statusCode == 201) {
        isDataLoading.value = false;
        print('Response: $responseData');
        Get.rawSnackbar(
            message: "Successful",
            backgroundColor: Colors.grey.shade800,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
        homecontroller.getProfile();
        // Get.offAll(
        //   () => LoginPage()),

      } else {
        isDataLoading.value = false;
        print('Response: $responseData');
        Get.rawSnackbar(
            message: " Failed",
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
            animationDuration: Duration(milliseconds: 100),
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  deleteimg(String name) async {
    Future<http.Response> response =
    ApiClient().delete("$deleteDocumentURL?document_name=$name");
    response.then((http.Response response) {
      if (response.statusCode == 200) {
        print("deleted");
        homecontroller.getProfile();
      }
      // isBannerLoading.value = false;

      else {}
    });
  }
}
//FIRST
//   uploadIamge(File image) async {
//     print("upload image called");
//     isDataLoading.value = false;
//     var request = http.MultipartRequest('PATCH', Uri.parse(UPLOADDOCUMENTURL));
//     request.headers
//         .addAll({"Authorization": 'Bearer ' + localData.read('access_token')});
//     request.files.add(
//         //
//
//         await http.MultipartFile.fromPath('document', image.path));
//     // var res = await request.send();
//     try {
//       var response = await request.send();
//       print("Responseee:::::::$response");
//       var responseData = await response.stream.bytesToString();
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('Response: $responseData'); // Print the response
//       } else {
//         print('Response: $responseData'); // Print the response
//       }
// // Handle failure case
//     } catch (error) {
// // Handle error
//     }
//   }
// }
//SECOND
// var request = http.MultipartRequest(
//   'PATCH',
//   Uri.parse(UPLOADDOCUMENTURL),
// );
// request.headers
//     .addAll({"Authorization": 'Bearer ' + localData.read('access_token')});
// if (image != null) {
//   request.files.add(
//     http.MultipartFile(
//       'documents', // The field name for the image in the form
//         File(image as String).readAsBytes().asStream(),
//
//
//
//
//
//         File(image as String).lengthSync(),
//
//
//
//
//
//         filename: image.split("/").last
//       // http.ByteStream(image.openRead()),
//       // await image.length(),
//       // filename: 'image.jpg',
//       // contentType:
//       // MediaType('image', 'jpeg'), // Adjust content type if needed
//     ),
//   );

//
// try {
// var response = await request.send();
// print("Responseee:::::::$response");
// var responseData = await response.stream.bytesToString();
// if (response.statusCode == 200 || response.statusCode == 201) {
// print('Response: $responseData'); // Print the response
//
// } else {
// print('Response: $responseData'); // Print the response
// }
// // Handle failure case
// } catch
//
// (
//
// error) {
// // Handle error
// }
// }
