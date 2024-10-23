import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/home_navigation/widget/svg_custom_icon.dart';
import '../../../../config/route/route_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class DashBoardFeatures extends StatelessWidget {
  const DashBoardFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: Dimension.height15,
          mainAxisSpacing: Dimension.height15,
        ),
        itemCount: featureIcons.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
              } else if (index == 1) {
                Get.toNamed(RouteHelper.getRechargePage());
              } else if (index == 2) {
                Get.toNamed(RouteHelper.getRefer());
              } else if (index == 3) {
                Get.toNamed(RouteHelper.getSupportPage());
              } else if (index == 4) {
                Get.toNamed(RouteHelper.getStore());
              } else {}
            },
            child: Container(
              height: Dimension.height40,
              width: Dimension.height60,
              decoration: BoxDecoration(
                color: AppColors.pureWhite,
                borderRadius: BorderRadius.circular(Dimension.radius15),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(Dimension.height10),
                    height: Dimension.height50,
                    width: Dimension.height50,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimension.radius50 * 2),
                      color: AppColors.whiteShade,
                    ),
                    child: myIcon("${featureIcons[index]}"),
                  ),
                  SizedBox(height: Dimension.height10),
                  Center(
                    child: SmallTxt(
                      text: featureText[index],
                      size: Dimension.font14,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
