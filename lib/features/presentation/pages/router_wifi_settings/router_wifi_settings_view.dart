import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/about_router/about_router.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/auto_diagnose/auto_diagnose_view.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/connectedDevice/connected_device_view.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/device_filters/device_filters_view.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/router_card.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/router_restart/router_restart_view.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/router_status_container.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/wifiSettings/wifi_settings_view.dart';
import 'package:dish_home/features/presentation/pages/setting_page/setting_widget.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RouterWifiSettingsView extends StatelessWidget {
  const RouterWifiSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Router"),
      body: Container(
        height: double.infinity,
        color: Colors.grey.withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RouterStatusContainer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings",
                        style:
                            normalStyle.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AutoDiagnoseView());
                        },
                        child: RouterCard(
                            icon: "assets/svg/autoDiagnostics.svg",
                            title: "Auto Diagnostics"),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => WifiSettingsView());
                        },
                        child: RouterCard(
                            icon: "assets/svg/wifiSettings.svg",
                            title: "Wi-Fi Settings"),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ConnectedDeviceView());
                        },
                        child: RouterCard(
                            icon: "assets/svg/connectedDevices.svg",
                            title: "Connected Devices"),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DeviceFiltersView());
                        },
                        child: RouterCard(
                            icon: "assets/svg/deviceFilters.svg",
                            title: "Device Filters"),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => RouterRestartView());
                        },
                        child: RouterCard(
                            icon: "assets/svg/restartRouter.svg",
                            title: "Restart Router"),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => AboutRouter());
                        },
                        child: RouterCard(
                            icon: "assets/svg/aboutRouter.svg",
                            title: "About Router"),
                      ),
                      SizedBox(height: 10),
                    ],
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
