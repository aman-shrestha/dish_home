import 'dart:io';

import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/profile/profile_controller.dart';
import 'package:dish_home/features/presentation/widget/big_text.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as formDataMap;

ProfileController profileController = Get.find<ProfileController>();

class UserProfile extends StatefulWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? profileImage;
  const UserProfile(
      {super.key, this.name, this.email, this.phone, this.profileImage});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final sphoneController = TextEditingController();

  XFile? _file = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Profile Edit"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (_file != null)
                        ? Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius50),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(File(_file!.path)),
                              ),
                            ),
                          )
                        : (widget.profileImage == null ||
                                widget.profileImage == "")
                            ? Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimension.radius50),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/img/userP.png",
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius50),
                                    // shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          imageBaseUrl + widget.profileImage!,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            final ImagePicker _picker = ImagePicker();
                            _file = await _picker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {});
                          },
                          child: Container(
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.red)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Upload Profile Picture",
                                  style:
                                      normalStyle.copyWith(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(242, 244, 247, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                "Remove",
                                style: normalStyle.copyWith(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallTxt(
                      text: "Basic Details",
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: Dimension.height20,
                    ),
                    Text(
                      "Full name",
                      style: normalStyle,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(
                      hintText: widget.name ?? "1234567",
                      inPutController: nameController,
                    ),
                    SizedBox(height: Dimension.height15),
                    Text(
                      "Email",
                      style: normalStyle,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(
                      hintText: widget.email ?? "anjesh@Sahani",
                      inPutController: emailController,
                    ),
                    SizedBox(height: Dimension.height15),
                    Text(
                      "Primary Mobile Number",
                      style: normalStyle,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(
                      hintText: widget.phone ?? "9857574737",
                      inPutController: phoneController,
                    ),
                    SizedBox(height: Dimension.height20),
                    Text(
                      "Secondary Mobile Number",
                      style: normalStyle,
                    ),
                    SizedBox(height: Dimension.height5),
                    MyTextField(
                      hintText: widget.phone ?? "9857574737",
                      inPutController: sphoneController,
                    ),
                    SizedBox(height: Dimension.height20),
                    Obx(
                      () => InkWell(
                        onTap: () async {
                          String name = nameController.text;
                          String email = emailController.text;
                          String phone = phoneController.text;
                          if (name == "" || email == "" || phone == "") {
                            Get.rawSnackbar(
                                message: "Missing Fields",
                                backgroundColor: AppColors.redColor,
                                duration: Duration(seconds: 2),
                                animationDuration: Duration(milliseconds: 100),
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            formDataMap.FormData formData =
                                formDataMap.FormData.fromMap({
                              "name": name,
                              "email": email,
                              "phone": phone,
                              "profile_image": _file != null
                                  ? await formDataMap.MultipartFile.fromFile(
                                      _file!.path)
                                  : null
                            });
                            profileController.updateUserProfileForm(formData);
                          }
                        },
                        child: Center(
                          child: Container(
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.red)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: profileController.isLoading.value
                                    ? Container(
                                        height: 18,
                                        width: 18,
                                        child: CircularProgressIndicator(
                                          color: AppColors.redColor,
                                          strokeWidth: 3,
                                        ),
                                      )
                                    : Text(
                                        "Update Profile",
                                        style: normalStyle.copyWith(
                                            color: Colors.red),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
