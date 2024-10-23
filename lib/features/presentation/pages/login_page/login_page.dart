import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/widget/svg_custom_icon.dart';
import 'package:dish_home/features/presentation/pages/faqs_page/faqs_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/availability_view.dart';
import 'package:dish_home/features/presentation/pages/login_page/contact_us_info/contact_us_info.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_controller.dart';
import 'package:dish_home/features/presentation/pages/login_page/offer_view.dart';
import 'package:dish_home/features/presentation/widget/app_logo.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/register_button.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/textfielf_validation.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/route/route_helper.dart';
import '../../widget/chat_bot_icon.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/header_text.dart';
import '../../widget/password_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCheck = true;
  bool hidePassword = false;
  final _loginController = LoginController();

  final phoneContr = TextEditingController();
  final passwordContr = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    phoneContr.dispose();
    passwordContr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/BG.webp"), fit: BoxFit.fill),
        ),
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Dimension.height80,
                      ),
                      const RegisterButton(),
                      SizedBox(
                        height: Dimension.height10,
                      ),
                      const Center(
                        child: AppLogo(),
                      ),
                      SizedBox(height: Dimension.height10),
                      HeaderText(text: "Login to DishHome"),
                      SizedBox(height: Dimension.height5),
                      Text(
                        "Enter your credentials to login to your account.",
                        style: smallStyle.copyWith(color: AppColors.grey),
                        // GoogleFonts.lato(
                        //   fontSize: Dimension.font16,
                        //   color: AppColors.grey,
                        // ),
                      ),
                      SizedBox(
                        height: Dimension.height40,
                      ),
                      AppTextField(
                        hintText: 'Phone Number',
                        icon: Icons.local_phone_outlined,
                        textController: phoneContr,
                        inputType: TextInputType.number,
                        isObscure: false,
                        validator: (value) =>
                            ValidatorUtils().validatePhone(value),
                      ),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      PassWordTextField(
                        hintText: 'Password',
                        validator: (value) =>
                            ValidatorUtils().validatePassword(value),
                        icon: Icons.lock_outline_rounded,
                        textController: passwordContr,
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: Dimension.height10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isCheck,
                                    activeColor: AppColors.primary,
                                    onChanged: (val) {
                                      setState(() {
                                        isCheck = val!;
                                      });
                                    }),
                                SmallTxt(
                                  text: "Remember me",
                                  size: Dimension.font16,
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getForgotPassword());
                              },
                              child: SmallTxt(
                                text: "Forget password?",
                                color: AppColors.redColor.withOpacity(0.7),
                                size: Dimension.font16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height10),
                      Obx(
                        () => CustomButton(
                          width: double.infinity,
                          color: AppColors.redColor,
                          text: "Login ",
                          isLoading: _loginController.isLoading.value,
                          onTap: () async {
                            // if (phoneContr.text == 10 ||
                            //     phoneContr.text.isNumericOnly) {
                            //   if (passwordContr.text.length > 7) {
                            //     Result result =
                            //         await _loginController.userLogin(
                            //       phoneContr.text,
                            //       passwordContr.text,
                            //     );
                            //   } else {
                            //     Get.rawSnackbar(
                            //         message: "Password should be more than 7",
                            //         backgroundColor: AppColors.redColor,
                            //         duration: Duration(seconds: 2),
                            //         animationDuration:
                            //             Duration(milliseconds: 100),
                            //         snackPosition: SnackPosition.BOTTOM);
                            //   }
                            // } else {
                            //   Get.rawSnackbar(
                            //       message: "Phone number is invalid",
                            //       backgroundColor: AppColors.redColor,
                            //       duration: Duration(seconds: 2),
                            //       animationDuration:
                            //           Duration(milliseconds: 100),
                            //       snackPosition: SnackPosition.BOTTOM);
                            // }

                            Get.toNamed(RouteHelper.getHomeNav());
                          },
                        ),
                      ),
                      SizedBox(height: Dimension.height10 * 1.6),
                      Container(
                        height: Dimension.height60,
                        width: Dimension.buttonWidth,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.3)),
                          color: AppColors.buttonColors.withOpacity(0.7),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: Dimension.height60),
                            Image.asset("assets/icons/fingerprint.png"),
                            SizedBox(width: Dimension.height10),
                            SmallTxt(
                              text: "Tap here for Biometric Log in",
                              size: Dimension.font16,
                              color: AppColors.textColors,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height10 * 1.6),
                      Container(
                        height: Dimension.height60,
                        width: Dimension.buttonWidth,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius10),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.3)),
                          color: AppColors.pureWhite,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: Dimension.height100),
                            SmallTxt(
                              text: "Or Continue with",
                              size: Dimension.font16,
                              color: AppColors.textColors,
                            ),
                            SizedBox(width: Dimension.height10),
                            Row(
                              children: [
                                myIcon("assets/menu/f.svg"),
                                const SizedBox(width: 5),
                                myIcon("assets/menu/g.svg"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimension.height10 * 2.4),
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
                                  ..onTap = () =>
                                      Get.toNamed(RouteHelper.getLoginWithID()),
                                text: "Customer ID",
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
            Container(
              height: 80,
              color: Color.fromRGBO(242, 244, 247, 1),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ContactUsInfo());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/contact.svg"),
                          SizedBox(height: 8),
                          Text(
                            "Contact",
                            style: smallStyle.copyWith(
                              color: Color.fromRGBO(102, 112, 133, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => OfferView());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/offers.svg"),
                          SizedBox(height: 8),
                          Text(
                            "Offers",
                            style: smallStyle.copyWith(
                              color: Color.fromRGBO(102, 112, 133, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => FeedBackPage());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/faqs.svg"),
                          SizedBox(height: 8),
                          Text(
                            "FAQs",
                            style: smallStyle.copyWith(
                              color: Color.fromRGBO(102, 112, 133, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => AvailabilityView());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/availability.svg"),
                          SizedBox(height: 8),
                          Text(
                            "Availability",
                            style: smallStyle.copyWith(
                              color: Color.fromRGBO(102, 112, 133, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColors.whiteGrey,
      //   child: const ChatBotLogo(),
      //   onPressed: () {},
      // ),
    );
  }
}
