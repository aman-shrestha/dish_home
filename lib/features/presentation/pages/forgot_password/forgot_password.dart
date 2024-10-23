import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/forget_password_controller.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/widget/chat_bot_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/textfielf_validation.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/app_logo.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/register_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final forgetPassword = TextEditingController();
  final forgetPasswordController  = ForgetPasswordController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    forgetPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(""),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/BG.webp"), fit: BoxFit.fill),
        ),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Dimension.height10,
                ),
                const Center(
                  child: AppLogo(),
                ),
                SizedBox(height: Dimension.height20),
                HeaderText(text: "Forgot Password"),
                SizedBox(height: Dimension.height5),
                Text(
                  "Enter your registered mobile number to get\n verification code",
                  style: smallStyle.copyWith(color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Dimension.height45,
                ),
                AppTextField(
                  hintText: 'Mobile Number',
                  icon: Icons.phone_outlined,
                  textController: forgetPassword,
                  isObscure: false,
                  validator:(value) =>ValidatorUtils().validatePhone(value),
                ),
                SizedBox(height: Dimension.height20),
                Obx(
                  ()=> CustomButton(
                    isLoading: forgetPasswordController.isLoading.value ,
                    
                    color: AppColors.redColor,
                    text: "Send verification code ",
                    width: double.infinity,
                    onTap: () async {
                      // Get.toNamed(RouteHelper.getOtpVerificationPage());
                      // Get.to(() => OtpVerification(
                      //       forgetPhoneNumber: forgetPassword.text,
                      //     ));
                      Result result =await forgetPasswordController.forgetPassword(forgetPassword.text);
                    
                    },
                  ),
                ),
                SizedBox(height: Dimension.height40 * 8),
              ],
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
