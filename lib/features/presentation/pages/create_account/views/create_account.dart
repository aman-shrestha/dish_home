import 'dart:async';

import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/create_account/view_model/create_account_view_model.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';

import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/textfielf_validation.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:dish_home/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/chat_bot_icon.dart';
import '../../../widget/custom_text_field.dart';
import '../../../widget/password_text_field.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  // AuthAndUserController _controller = Get.find();

  bool isCheck = false;
  bool hidePassword = false;
  bool hideConfirmPAssword = false;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final emailContr = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final createAccountViewModel = CreateAccountViewModel();
  final _registerFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailContr.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(""),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/BG.webp"), fit: BoxFit.fill),
        ),
        child: Form(
          key: _registerFormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(child: AppLogo()),
                  SizedBox(height: Dimension.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register to",
                        style: largeStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " DishHome",
                        style: largeStyle.copyWith(
                            color: AppColors.redColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimension.height5),
                  SmallTxt(
                    text: "Enter your credentials to login to your account.",
                    color: AppColors.grey,
                    size: 14,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  AppTextField(
                    hintText: 'First Name',
                    inputType: TextInputType.text,
                    icon: Icons.person,
                    textController: firstName,
                    isObscure: false,
                    validator: (value) => ValidatorUtils().validateFName(value),
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  AppTextField(
                    hintText: 'Last Name',
                    icon: Icons.person,
                    textController: lastName,
                    isObscure: false,
                    validator: (value) => ValidatorUtils().validateLName(value),
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  AppTextField(
                    hintText: 'Email',
                    icon: Icons.email_outlined,
                    textController: emailContr,
                    isObscure: false,
                    validator: (value) => ValidatorUtils().validateEmail(value),
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  AppTextField(
                    hintText: 'Phone Number',
                    inputType: TextInputType.number,
                    icon: Icons.phone_outlined,
                    textController: phoneNumber,
                    validator: (value) => ValidatorUtils().validatePhone(value),
                    isObscure: false,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  PassWordTextField(
                    hintText: 'Password',
                    validator: (value) =>
                        ValidatorUtils().validatePassword(value),
                    icon: Icons.lock_outline_rounded,
                    textController: password,
                    isObscure: hidePassword ? false : true,
                    pasIcon: hidePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    onTap: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  // PassWordTextField(
                  //   hintText: 'Password',
                  //   icon: Icons.lock_outline_rounded,
                  //   textController: password,
                  //   icon: Icons.lock_outline_rounded,
                  //   validator: (value) =>
                  //       ValidatorUtils().validatePassword(value),
                  //   isObscure: hidePassword ? false : true,
                  //   pasIcon: hidePassword
                  //       ? Icons.visibility_outlined
                  //       : Icons.visibility_off_outlined,
                  //   onTap: () {
                  //     setState(() {
                  //       hidePassword = !hidePassword;
                  //     });
                  //   },
                  // ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  PassWordTextField(
                    hintText: 'Confirm Password',
                    validator: (value) => ValidatorUtils()
                        .validateConfirmPassword(
                            password.text, confirmPassword.text),
                    icon: Icons.lock_outline_rounded,
                    textController: confirmPassword,
                    isObscure: hidePassword ? false : true,
                    pasIcon: hidePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    onTap: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  // dsafasdf
                  SizedBox(height: Dimension.height20),
                  Obx(
                    () => CustomButton(
                      onTap: () async {
                        String fullName = firstName.text + lastName.text;
                        print(fullName);
                        if (phoneNumber.text.length == 10 &&
                            phoneNumber.text.isNumericOnly) {
                          if (password.text.length > 7 &&
                              password.text == confirmPassword.text) {
                            if (_registerFormKey.currentState!.validate()) {
                              Result result =
                                  await createAccountViewModel.register(
                                      fullName,
                                      emailContr.text,
                                      password.text,
                                      confirmPassword.text,
                                      phoneNumber.text);
                            } else {
                              Get.rawSnackbar(
                                  message:
                                      "Password should more than 7 characters",
                                  backgroundColor: AppColors.redColor,
                                  duration: Duration(seconds: 2),
                                  animationDuration:
                                      Duration(milliseconds: 100),
                                  snackPosition: SnackPosition.TOP);
                            }
                          }
                        } else {
                          Get.rawSnackbar(
                              message: "Mobile number not valid",
                              backgroundColor: AppColors.redColor,
                              duration: Duration(seconds: 2),
                              animationDuration: Duration(milliseconds: 100),
                              snackPosition: SnackPosition.TOP);
                        }
                      },
                      width: double.infinity,
                      color: AppColors.redColor,
                      text: "Register ",
                      isLoading: createAccountViewModel.isLoading.value,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.whiteGrey,
        child: const ChatBotLogo(),
        onPressed: () {},
      ),
    );
  }
}
