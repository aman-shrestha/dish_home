import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/wifiSettings/wifi_change_password.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/custom_button.dart';
import '../../../widget/password_text_field.dart';

class WifiPassword extends StatefulWidget {
  WifiPassword({super.key});

  @override
  State<WifiPassword> createState() => _WifiPasswordState();
}

class _WifiPasswordState extends State<WifiPassword> {
  bool hidePassword = false;

  final emailContr = TextEditingController();

  final passwordContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Wi-Fi Password"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: normalStyle.copyWith(
                  color: Color.fromRGBO(52, 64, 84, 1),
                ),
              ),
              SizedBox(height: 8),
              PassWordTextField(
                hintText: '',
                icon: Icons.lock_outline_rounded,
                textController: passwordContr,
                isObscure: hidePassword ? true : false,
                pasIcon: hidePassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                onTap: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                "Suggest Strong Password",
                style: smallStyle.copyWith(
                  color: Color.fromRGBO(0, 51, 234, 1),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromRGBO(0, 51, 234, 1),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Get.to(() => WifiChangePassword());
                },
                child: CustomButton(
                  color: Colors.white,
                  text: "Change Password",
                  width: double.infinity,
                  textColor: Color.fromRGBO(237, 28, 36, 1),
                  borderColor: Colors.red,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  "View Wi-Fi QR Code",
                  style: smallStyle.copyWith(
                    color: Color.fromRGBO(0, 51, 234, 1),
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(0, 51, 234, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
