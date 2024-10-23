import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/auto_diagnose/auto_diagnose_list.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/wifiSettings/wifi_settings_view.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_dimension.dart';
import '../../../widget/small_text.dart';

class AutoDiagnoseView extends StatelessWidget {
  var go = false.obs;
  AutoDiagnoseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Auto Diagnose"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Facing Internet Issue?",
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  "Firstly, diagnose your internet issue by clicking the “Start” button. If your problem remains unresolved, please report it.",
                  style: smallStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
              ),
              SizedBox(height: 40),
              Obx(
                () => go.value == true
                    ? GestureDetector(
                        onTap: () {
                          Get.to(() => AutoDiagnoseList());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                            color: Color.fromRGBO(255, 110, 101, 1),

                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SmallTxt(
                              text: "Start",
                              size: Dimension.font32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(242, 244, 247, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                "Connect to Mobile Data/Sweethome",
                                style: normalStyle,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "You’re connected to mobile data/sweethome. For better experience, please switch to DH-Fibernet.",
                                style: smallStyle.copyWith(
                                    color: Color.fromRGBO(102, 112, 133, 1)),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  go.value = !go.value;
                                },
                                child: CustomButton(
                                  color: Color.fromRGBO(237, 28, 36, 1),
                                  text: "Continue",
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(height: 16),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => WifiSettingsView());
                                },
                                child: CustomButton(
                                  color: Colors.transparent,
                                  text: "Switch to Wi-Fi",
                                  width: double.infinity,
                                  textColor: Color.fromRGBO(237, 28, 36, 1),
                                  borderColor: Color.fromRGBO(237, 28, 36, 1),
                                ),
                              ),
                              SizedBox(height: 16),
                              CustomButton(
                                color: Colors.transparent,
                                text: "Cancel",
                                width: double.infinity,
                                textColor: Color.fromRGBO(237, 28, 36, 1),
                                borderColor: Color.fromRGBO(237, 28, 36, 1),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
              Spacer(),
              Text(
                "Troubleshooting for DH-Fibernet with mobile data",
                textAlign: TextAlign.end,
                style: smallStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(102, 112, 133, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
