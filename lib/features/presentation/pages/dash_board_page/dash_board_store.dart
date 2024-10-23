import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class DashBoardStore extends StatelessWidget {
  const DashBoardStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimension.height10,
            ),
            height: Dimension.height70,
            width: Dimension.height180,
            decoration: BoxDecoration(
              color: AppColors.pureWhite,
              borderRadius: BorderRadius.circular(
                Dimension.radius10,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.asset(routerList[index])),
                SmallTxt(
                  text: index == 0 ? "Wifi Extender" : "Fresh Spinach",
                  size: Dimension.font18,
                  color: AppColors.darkNAVY,
                ),
                SmallTxt(
                  text: "Rs. 30/each",
                  size: Dimension.font18,
                  color: AppColors.green,
                ),
                SizedBox(height: Dimension.height10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View details",
                      style: GoogleFonts.lato(
                        fontSize: Dimension.font18,
                        color: AppColors.redColor,
                      ),
                    ),
                    SizedBox(width: Dimension.width5),
                    const Icon(
                      Icons.arrow_forward,
                      color: AppColors.redColor,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
