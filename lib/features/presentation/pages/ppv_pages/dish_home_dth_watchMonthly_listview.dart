import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/route/route_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../widget/custom_button.dart';
import '../../widget/small_text.dart';

class DishHomeDTHWatchMonthly extends StatelessWidget {
  const DishHomeDTHWatchMonthly({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (ctx, index) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height5,
            vertical: Dimension.height10,
          ),
          margin: const EdgeInsets.symmetric(vertical: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius10),
            color: AppColors.pinkShade,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                width: Dimension.height10 * 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.radius10),
                      bottomLeft: Radius.circular(Dimension.radius10)),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFF959A),
                      Color(0xffEABEFF),
                      Color(0xffFFCFFD),
                    ],
                  ),
                ),
                child: Center(
                  child: SmallTxt(
                    text: "Life\nStyle\nHD",
                    size: Dimension.font26,
                    color: AppColors.redColor,
                  ),
                ),
              ),
              SizedBox(width: Dimension.width15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DishHome lifeStyle HD Package",
                      style: normalStyle.copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    // SizedBox(height: Dimension.height30),
                    Text(
                      "✓ Internet Charge : Rs. 24305",
                      style: smallStyle.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(height: Dimension.height5),
                    Text(
                      "✓ Installation Charge: Free",
                      style: smallStyle.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(height: Dimension.height5),
                    Text(
                      "✓ Router Rental Charge: Free",
                      style: smallStyle.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(height: 10),
                    SmallTxt(
                      text: "Rs. 12,450/ monthly",
                      color: AppColors.green,
                      size: Dimension.font20,
                    ),
                    SizedBox(height: Dimension.height10),
                    CustomButton(
                      color: AppColors.redColor,
                      text: "Choose plan",
                      width: Dimension.height10 * 24,
                      height: Dimension.height35,
                      onTap: () {
                        Get.toNamed(RouteHelper.getLifeStyleHD());
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
