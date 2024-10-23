import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/wifiSettings/wifi_SSID.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/wifiSettings/wifi_password.dart';
import 'package:dish_home/features/presentation/widget/switch.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WifiSettingsView extends StatelessWidget {
  const WifiSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Wi-Fi Settings"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Enable Wi-Fi",
                      style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    SwitchButton(),
                  ],
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Get.to(() => WifiPassword());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wi-Fi Password",
                        style:
                            normalStyle.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Get.to(() => WifiSSID());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wi-Fi SSID",
                        style:
                            normalStyle.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hide SSID",
                      style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    SwitchButton(),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bind Steering",
                      style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    SwitchButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
