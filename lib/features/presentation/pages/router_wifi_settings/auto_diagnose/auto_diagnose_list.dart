import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/auto_diagnose/auto_diagnose_list_container.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/auto_diagnose/diagnose_report.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutoDiagnoseList extends StatelessWidget {
  final List title = [
    "Account Status",
    "Bandwidth Status",
    "IPTV Status",
    "Optical Power Level",
    "Connection Status",
    "Connected Status",
    "Signal Status",
  ];
  final List subtitle = [
    "Account Check Complete",
    "Bandwidth Check Complete",
    "IPTV Status Check Complete",
    "Checking power level Complete",
    "Connection Status Check Complete",
    "Checking connected device Complete",
    "Checking Signal Status Complete",
  ];
  AutoDiagnoseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Auto Diagnose"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Troubleshooting for DH-Fibernet with mobile data",
                    style: smallStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int index) =>
                      AutoDiagnoseListContainer(
                    title: title[index],
                    subtitle: subtitle[index],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      view_report(),
                      isDismissible: true,
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                  child: CustomButton(
                    color: Color.fromRGBO(237, 28, 36, 1),
                    text: "View full reports",
                    width: double.infinity,
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget view_report() {
    return Container(
      height: 400,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "No Issues detected",
                style: mediumStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Internet Connection seems fine as of now. If\nyou are facing other internet problems,\n report them.",
                  style: normalStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.to(() => DiagnoseReport());
                },
                child: CustomButton(
                  color: Color.fromRGBO(237, 28, 36, 1),
                  text: "View full reports",
                  width: double.infinity,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              CustomButton(
                color: Colors.white,
                text: "Report other issue",
                borderColor: Colors.red,
                textColor: Colors.red,
                width: double.infinity,
              ),
              SizedBox(height: 16),
              CustomButton(
                color: Colors.white,
                text: "Close",
                borderColor: Color.fromRGBO(237, 28, 36, 1),
                textColor: Color.fromRGBO(237, 28, 36, 1),
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
