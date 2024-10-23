import 'package:dish_home/features/presentation/pages/profile/referrals/referrals_container.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../app/home_navigation/widget/custom_app_bar.dart';

class ReferralsView extends StatelessWidget {
  List title = [
    "Anish Shakya",
    "Anish Shakya",
    "Anish Shakya",
    "Anish Shakya",
  ];
  List date = [
    "15 Mar 2023 19:39 PM",
    "15 Mar 2023 19:39 PM",
    "15 Mar 2023 19:39 PM",
    "15 Mar 2023 19:39 PM",
  ];
  List phoneNo = [
    "9846453743",
    "9846453743",
    "9846453743",
    "9846453743",
  ];
  List Status = [
    "CANCELLED",
    "COMPLETED",
    "PROGRESSING",
    "NEW",
  ];
  ReferralsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("My Referrals"),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: title.length,
                    itemBuilder: (BuildContext context, int index) {
                      String status = Status[index];
                      Color textColor;
                      if (status == 'CANCELLED') {
                        textColor = Color.fromRGBO(223, 71, 63, 1);
                      } else if (status == 'COMPLETED') {
                        textColor = Color.fromRGBO(52, 168, 83, 1);
                      } else if (status == 'PROGRESSING') {
                        textColor = Color.fromRGBO(218, 164, 12, 1);
                      } else {
                        textColor = Color.fromRGBO(19, 107, 225, 1);
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(242, 244, 247, 1)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title[index],
                                  style: normalStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(52, 64, 84, 1)),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/svg/message.svg"),
                                    SizedBox(width: 8),
                                    Text(
                                      date[index],
                                      style: smallStyle.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(102, 112, 133, 1)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/svg/phone.svg"),
                                    SizedBox(width: 8),
                                    Text(
                                      phoneNo[index],
                                      style: smallStyle.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(102, 112, 133, 1)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text(
                                      "Status: ",
                                      style: normalStyle.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(102, 112, 133, 1)),
                                    ),
                                    Text(
                                      Status[index],
                                      style: normalStyle.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: textColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
