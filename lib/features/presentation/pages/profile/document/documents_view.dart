import 'dart:io';

import 'package:dish_home/features/presentation/pages/profile/document/documents_controller.dart';
import 'package:dish_home/features/presentation/pages/profile/document/documents_view_container.dart';
import 'package:dish_home/features/presentation/pages/profile/profile_controller.dart';
import 'package:dish_home/getx_controller/home_controller.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as formDataMap;

import '../../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../../utils/theme.dart';

ProfileController profileController = Get.find<ProfileController>();

class DocumentsView extends StatefulWidget {
  DocumentsView({super.key});

  @override
  final controller = Get.put(DocumentsController());

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  final homecontroller = Get.put(HomeController());
  XFile? _file = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("My Documents"),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(() => widget.controller.isDataLoading.value
                  ? CircularProgressIndicator()
                  : Container()),
              InkWell(
                onTap: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();

                  if (result != null) {
                    File file = File(result.files.single.path!);
                    widget.controller.uploadImage(file as File);
                  } else {
                    // User canceled the picker
                  }
                  homecontroller.getProfile();
                  //   final pickedFile = await ImagePicker().getImage(
                  //     source: ImageSource.gallery,
                  //     maxWidth: 1920,
                  //     maxHeight: 1200,
                  //     imageQuality: 80,
                  //   );
                  //   if (pickedFile != null) {
                  //     // Create a File object from the picked file path
                  //     File pickedFileAsFile = File(pickedFile.path);
                  //
                  //     // Call your uploadImage method with the File object
                  //     widget.controller.uploadIamge(pickedFileAsFile);
                  //   }
                  //   // widget.controller.uploadIamge(pickedFile as File);
                },
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Upload Identification Document",
                        style: normalStyle.copyWith(
                            color: Color.fromRGBO(0, 67, 143, 1)),
                      ),
                      profileController.isLoading.value
                          ? Container(
                              height: 14,
                              width: 14,
                              child: CircularProgressIndicator(
                                color: Color.fromRGBO(0, 67, 143, 1),
                                strokeWidth: 2,
                              ),
                            )
                          : Icon(
                              Icons.add,
                              color: Color.fromRGBO(0, 67, 143, 1),
                            )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => Expanded(
                  child: Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: homecontroller.documentsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return DocumentsViewContainer(
                            title:
                                homecontroller.documentsList[index].toString(),
                            img: homecontroller.documentsList[index].toString(),
                            onTap: () async{
                            widget.controller.deleteimg(homecontroller.documentsList[index]);
                            },
                          );
                          // DocumentsViewContainer(title: "$_file");
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
