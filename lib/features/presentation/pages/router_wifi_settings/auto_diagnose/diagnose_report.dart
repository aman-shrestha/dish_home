import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/auto_diagnose/diagnose_report_list.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiagnoseReport extends StatelessWidget {
  List title = [
    "DIAGONISTIC NETWORK",
    "CONNECTED FROM",
    "CONNECTED SSID",
    "TOTAL TPTV BOX",
    "NO. OF DEVICES CONNECTED",
    "WITHIN RANGE",
    "OUT OF RANGE",
  ];
  List subtitle = [
    "Wi-Fi Data",
    "Outside",
    "Sweethome",
    "1",
    "10",
    "6",
    "4",
  ];
  DiagnoseReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Diagnose Report"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg/error.svg",
                    color: Colors.green,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Your optical power level is less than threshold. Please rise a ticket.",
                      style: smallStyle.copyWith(color: Colors.green),
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
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
                      Text(
                        "ACCOUNT STATUS",
                        style: smallStyle.copyWith(
                          color: Color.fromRGBO(152, 162, 179, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            "Enable",
                            style: smallStyle.copyWith(
                              color: Colors.green,
                            ),
                          ),
                          Text("/", style: smallStyle),
                          Text(
                            "Disable",
                            style: smallStyle.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: title.length,
                        itemBuilder: (BuildContext context, int index) =>
                            DiagnoseReport_list(
                                title: title[index], subtitle: subtitle[index]),
                      ),
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
