import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../app/home_navigation/widget/svg_custom_icon.dart';
import '../../../../config/route/route_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class DashBoardProducts extends StatelessWidget {
  List package = ["TV", "Internet", "PPV", "DH Go"];
  List packageIcons = [
    "assets/svg/tv1.svg",
    "assets/img/wifi.svg",
    "assets/img/vdo.svg",
    "assets/img/dhgo.svg"
  ];

  DashBoardProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: homeIcon.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                if (index == 0) {
                  Get.toNamed(RouteHelper.getPpvPage());
                } else if (index == 1) {
                  Get.toNamed(RouteHelper.getDataUsages());
                } else if (index == 2) {
                  Get.toNamed(RouteHelper.getTvPage());
                } else {
                  Get.toNamed(RouteHelper.getDishHomeGo());
                }
              },
              child: Container(
                alignment: Alignment.center,
                // height: Dimension.height40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.pureWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                            height: Dimension.height50,
                            width: Dimension.height50,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius50 * 2),
                              color: AppColors.whiteShade,
                            ),
                            child: SvgPicture.asset(packageIcons[index])),
                      ),
                      SizedBox(height: Dimension.height10),
                      SmallTxt(
                        text: package[index],
                        color: AppColors.smallTextColor,
                        size: Dimension.font12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
