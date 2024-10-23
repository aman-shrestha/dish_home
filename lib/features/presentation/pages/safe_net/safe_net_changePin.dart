import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/safe_net/safe_net_container.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/theme.dart';

class SafeNetChangePin extends StatelessWidget {
  const SafeNetChangePin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Safenet"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeNetContainer(),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(242, 244, 247, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Create your 6 digit pin",
                            style: normalStyle,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "Enter your Wi-Fi SSID",
                          style: smallStyle,
                        ),
                        SizedBox(height: 16),
                        OtpTextField(
                          numberOfFields: 6,
                          borderColor: Color(0xFF667085),
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Verification Code"),
                                    content: Text(
                                        'Code entered is $verificationCode'),
                                  );
                                });
                          }, // end onSubmit
                        ),
                        SizedBox(height: 24),
                        CustomButton(
                          color: Color.fromRGBO(237, 28, 36, 1),
                          text: "Confirm",
                          width: double.infinity,
                        ),
                        SizedBox(height: 16),
                        CustomButton(
                          color: Colors.transparent,
                          text: "Cancel",
                          textColor: Colors.red,
                          width: double.infinity,
                          borderColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
