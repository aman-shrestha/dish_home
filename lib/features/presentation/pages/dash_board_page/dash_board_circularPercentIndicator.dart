import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/custom_button.dart';
import '../../widget/small_text.dart';

class DashBoardCircularPercentIndicator extends StatelessWidget {
  const DashBoardCircularPercentIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              startAngle: 120.0,
              radius: Dimension.height50,
              lineWidth: Dimension.height10,
              percent: 0.65,
              animationDuration: 20,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   "365",
                  //   style: normalStyle.copyWith(fontWeight: FontWeight.w700),
                  // ),
                  // Text(
                  //   "Day(s)",
                  //   style: normalStyle.copyWith(fontWeight: FontWeight.w700),
                  // ),

                  SmallTxt(
                    text: "365",
                    size: Dimension.font16,
                    color: AppColors.darkNAVY,
                  ),
                  SmallTxt(
                    text: "Day(s)",
                    size: Dimension.font16,
                    color: AppColors.darkNAVY,
                  ),
                  SmallTxt(
                    text: "remaining",
                    size: Dimension.font10,
                    color: AppColors.navyDark.withOpacity(0.6),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: AppColors.grey,
              progressColor: AppColors.redColor,
            ),
            SizedBox(width: 14.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nuclear Family Package\n(100 Mbps)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    // SmallTxt(
                    //   text: "Nuclear Family Package",
                    //   size: Dimension.font16,
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                    // Image.asset(
                    //   "assets/icons/Dish_logo.png",
                    //   height: Dimension.height30,
                    //   width: Dimension.height30,
                    // ),
                  ],
                ),
                SizedBox(height: 4.0),
                SmallTxt(
                  text: "1 month package",
                  size: Dimension.font14,
                  color: AppColors.grey,
                ),
                SizedBox(height: Dimension.height20),
                Row(
                  children: [
                    CustomButton(
                      color: Color.fromRGBO(52, 168, 83, 1),
                      text: "Renew",
                      textColor: AppColors.pureWhite,
                      height: Dimension.height30,
                    ),
                    SizedBox(width: Adaptive.w(2.0)),
                    CustomButton(
                      color: Color.fromRGBO(223, 227, 236, 1),
                      text: "Take credit",
                      textColor: AppColors.smallTextColor,
                      height: Dimension.height30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
