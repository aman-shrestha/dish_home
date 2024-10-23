import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_button.dart';
import '../../../widget/password_text_field.dart';

class WifiChangePassword extends StatefulWidget {
  WifiChangePassword({super.key});

  @override
  State<WifiChangePassword> createState() => _WifiChangePasswordState();
}

class _WifiChangePasswordState extends State<WifiChangePassword> {
  bool hidePassword = false;

  final emailContr = TextEditingController();

  final passwordContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Wi-Fi Password Change"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Enter your new password below and save changes.",
                  style: normalStyle.copyWith(
                      color: Color.fromRGBO(152, 162, 179, 1)),
                ),
                SizedBox(height: 24),
                PassWordTextField(
                  hintText: 'Current Password',
                  icon: Icons.lock_outline_rounded,
                  textController: passwordContr,
                  isObscure: hidePassword ? true : false,
                  pasIcon: hidePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  onTap: () {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                ),
                SizedBox(height: 16),
                PassWordTextField(
                  hintText: 'New Passsword',
                  icon: Icons.lock_outline_rounded,
                  textController: passwordContr,
                  isObscure: hidePassword ? true : false,
                  pasIcon: hidePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  onTap: () {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                ),
                SizedBox(height: 16),
                PassWordTextField(
                  hintText: 'Confirm Password',
                  icon: Icons.lock_outline_rounded,
                  textController: passwordContr,
                  isObscure: hidePassword ? true : false,
                  pasIcon: hidePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  onTap: () {
                    setState(
                      () {
                        hidePassword = !hidePassword;
                      },
                    );
                  },
                ),
                SizedBox(height: 40),
                CustomButton(
                  color: Color.fromRGBO(237, 28, 36, 1),
                  text: "Save Changes",
                  width: double.infinity,
                  textColor: Colors.white,
                  borderColor: Colors.red,
                ),
                SizedBox(height: 16),
                CustomButton(
                  color: Colors.white,
                  text: "Cancel",
                  width: double.infinity,
                  textColor: Color.fromRGBO(237, 28, 36, 1),
                  borderColor: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
