import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_dimension.dart';
import '../../../widget/custom_button.dart';

class WifiSSID extends StatelessWidget {
  const WifiSSID({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Wi-Fi SSID"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your Wi-Fi SSID",
                  style:
                      smallStyle.copyWith(color: Color.fromRGBO(52, 64, 84, 1)),
                ),
                SizedBox(height: 6),
                Container(
                  width: double.infinity,
                  height: 55,
                  // margin:
                  //     EdgeInsets.only(left: Dimension.height10, right: Dimension.height10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "",
                      hintStyle: TextStyle(
                          fontSize: Dimension.font16,
                          color: AppColors.grey.withOpacity(0.6)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                  color: Colors.white,
                  text: "Change Wi-Fi SSID",
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
