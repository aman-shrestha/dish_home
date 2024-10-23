import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_controller.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/route/route_helper.dart';
import '../../widget/app_logo.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/register_button.dart';

class LoginWithID extends StatefulWidget {
  const LoginWithID({super.key});

  @override
  State<LoginWithID> createState() => _LoginWithIDState();
}

class _LoginWithIDState extends State<LoginWithID> {
  final _loginController = LoginController();
  bool isCheck = false;

  final customerID = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    customerID.dispose();
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
                const RegisterButton(),
                SizedBox(height: Dimension.height40),
                const Center(child: AppLogo()),
                SizedBox(height: Dimension.height20),
                HeaderText(text: "Login to DishHome"),
                SizedBox(height: Dimension.height5),
                Text(
                  "Enter your customer ID to login  your account.",
                  style: smallStyle.copyWith(color: AppColors.grey),
                ),
                SizedBox(
                  height: Dimension.height45,
                ),
                AppTextField(
                  hintText: 'Customer ID',
                  icon: Icons.contact_mail_sharp,
                  textController: customerID,
                  isObscure: false,
                ),
                SizedBox(height: Dimension.height20),
                CustomButton(
                  onTap: () async {
                    if (customerID.text == null || customerID.text == "") {
                      Get.rawSnackbar(
                          message: "Missing Fields",
                          backgroundColor: AppColors.redColor,
                          duration: Duration(seconds: 2),
                          animationDuration: Duration(milliseconds: 100),
                          snackPosition: SnackPosition.BOTTOM);
                    } else {
                      Result result = await _loginController
                          .userLoginwithCostumerId(customerID.text);
                    }
                  },
                  width: double.infinity,
                  color: AppColors.redColor,
                  text: "Send verification code ",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                RichText(
                  text: TextSpan(
                      text: "Sign in using  ",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: Dimension.font16,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(RouteHelper.getLogin()),
                          text: "Mobile Number",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: Dimension.font16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ]),
                ),
                SizedBox(height: Dimension.height5),
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
