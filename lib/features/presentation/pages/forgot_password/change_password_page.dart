import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/forget_password_controller.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/textfielf_validation.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/header_text.dart';
import '../../widget/password_text_field.dart';

class ChangePassword extends StatefulWidget {
  final String resetToken;
  const ChangePassword({super.key,required this.resetToken});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  bool hidePassword = false;
  bool hideConfirmPAssword = false;
  final changePasswordController = ForgetPasswordController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    password.dispose();
    confirmPassword.dispose();
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
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Dimension.height20),
                const Center(
                  child: AppLogo(),
                ),
                SizedBox(height: Dimension.height20),
                HeaderText(text: "Change Password"),
                SizedBox(height: Dimension.height5),
                Text(
                  "Enter your new password below",
                  style: GoogleFonts.lato(
                    fontSize: Dimension.font16,
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(
                  height: Dimension.height45,
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
                SizedBox(height: Dimension.height20),
              Obx(
                  () => CustomButton(
                    width: double.infinity,
                    color: AppColors.redColor,
                    text: "Save Changes ",
                    isLoading: changePasswordController.isLoading.value ,
                    onTap: () async{
                      if(password.text == confirmPassword.text) {
                Result result = await  changePasswordController.changePassword(password.text, confirmPassword.text, widget.resetToken);
                
                
                
                      }else{
                          Get.rawSnackbar(
                            message: "Password Mismatch",
                            backgroundColor: AppColors.redColor,
                            duration: Duration(seconds: 2),
                            animationDuration: Duration(milliseconds: 100),
                            snackPosition: SnackPosition.BOTTOM);
                        // Get.offAll(() => LoginPage());
                      
                
                      }
                      // Get.toNamed(RouteHelper.getOtpVerificationPage());
                    },
                  ),
                ),
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
