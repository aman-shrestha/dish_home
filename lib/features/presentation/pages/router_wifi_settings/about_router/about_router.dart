import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class AboutRouter extends StatelessWidget {
  const AboutRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("About Router"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(242, 244, 247, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "STATUS",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("Online 1 day 7 hours"),
                        SizedBox(height: 16),
                        Text(
                          "SERIAL NUMBER",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("3874234877627264"),
                        SizedBox(height: 16),
                        Text(
                          "IP ADDRESS",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("192.168.18.5"),
                        SizedBox(height: 16),
                        Text(
                          "LAST ONLINE CAUSE",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("2023-OCT-23 (10:21 AM)"),
                        SizedBox(height: 16),
                        Text(
                          "LAST OFFLINE CAUSE",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text("2023-OCT-23 (11:21 AM)"),
                      ],
                    ),
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
