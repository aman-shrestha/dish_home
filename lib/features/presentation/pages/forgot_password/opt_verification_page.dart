import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/otpVerificationController.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/chat_bot_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/route/route_helper.dart';
import '../../../../utils/textfielf_validation.dart';
import '../../widget/custom_button.dart';
import '../../widget/header_text.dart';

class OtpVerification extends StatefulWidget {
  OtpVerification({super.key, this.phoneNumber, this.forgetPhoneNumber});

  final String? phoneNumber;
  final String? forgetPhoneNumber;

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final otpVerify = TextEditingController();

  final otpverifyController = OtpVerificationController();
  String phone1Number = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phone1Number =
        ((widget.forgetPhoneNumber == "" || widget.forgetPhoneNumber == null)
            ? widget.phoneNumber
            : widget.forgetPhoneNumber)!;
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
                const Center(
                  child: AppLogo(),
                ),
                SizedBox(height: Dimension.height20),
                HeaderText(text: "Verify OTP"),
                SizedBox(height: Dimension.height5),
                Text(
                  "Please enter verification code sent to\n            +977-${phone1Number}",
                  style: GoogleFonts.lato(
                    fontSize: Dimension.font16,
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(
                  height: Dimension.height45,
                ),
                AppTextField(
                  hintText: 'OTP Code',
                  icon: Icons.email_outlined,
                  textController: otpVerify,
                  inputType: TextInputType.number,
                  validator: (value) => ValidatorUtils().validateOTP(value),
                  isObscure: false,
                ),
                SizedBox(height: Dimension.height20),
                Obx(
                  () => CustomButton(
                    color: AppColors.redColor,
                    width: double.infinity,
                    text: "Verify ",
                    isLoading: otpverifyController.isLoading.value,
                    onTap: () async {
                      if (widget.forgetPhoneNumber == null ||
                          widget.forgetPhoneNumber == "") {
                        print(widget.forgetPhoneNumber);
                        // await otpverifyController
                        //     .verifyOtpThroughForgetPassword(
                        //         widget.forgetPhoneNumber!, otpVerify.text);
                        await otpverifyController.verifyOtpThroughRegister(
                            widget.phoneNumber!, otpVerify.text);
                      } else {
                        print(widget.phoneNumber);
                        await otpverifyController
                            .verifyOtpThroughForgetPassword(
                                widget.forgetPhoneNumber!, otpVerify.text);
                      }
                    },
                  ),
                ),
                SizedBox(height: Dimension.height40),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't receive verification code ?\n",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimension.font16,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await otpverifyController.resendOtp(phone1Number);
                  },
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: Dimension.font16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
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
