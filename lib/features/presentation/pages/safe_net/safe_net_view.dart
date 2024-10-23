import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/profileListCard.dart';
import 'package:dish_home/features/presentation/pages/safe_net/safe_net_changePin.dart';
import 'package:dish_home/features/presentation/pages/safe_net/safe_net_container.dart';
import 'package:dish_home/features/presentation/pages/setting_page/setting_widget.dart';
import 'package:dish_home/features/presentation/widget/switch.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../utils/app_dimension.dart';

class SafeNetView extends StatelessWidget {
  const SafeNetView({super.key});

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
              children: [
                SafeNetContainer(),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(top: Dimension.height15),
                  padding: EdgeInsets.only(
                      left: Dimension.width20,
                      top: Dimension.width10,
                      bottom: Dimension.width10),
                  decoration: BoxDecoration(
                      color: const Color(0xffFCFCFD),
                      borderRadius:
                          BorderRadiusDirectional.circular(Dimension.radius15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                          color: Colors.grey.withOpacity(.1),
                        ),
                      ],
                      border: Border.all(
                        color: Colors.grey.withOpacity(.2),
                      )),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svg/safenet_status.svg"),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      Text(
                        "Safenet Status",
                        style: smallStyle,
                      ),
                      Spacer(),
                      SwitchButton(),
                    ],
                  ),
                ),
                ProfileListCard(
                  icon: "assets/svg/blockWebsite.svg",
                  title: "BlockWebsite and App",
                ),
                ProfileListCard(
                  icon: "assets/svg/about.svg",
                  title: "About Safenet Control",
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SafeNetChangePin());
                  },
                  child: ProfileListCard(
                    icon: "assets/svg/changePin.svg",
                    title: "Change PIN",
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
