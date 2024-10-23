import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class StorePageNewArrivalsGridView extends StatelessWidget {
  const StorePageNewArrivalsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: Dimension.height10,
          mainAxisSpacing: Dimension.height10,
          childAspectRatio: 1,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext ctx, index) {
          return Material(
            elevation: 1,
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(Dimension.radius10),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              height: Dimension.height12 * 9,
              width: Dimension.height12 * 9,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xfff7f7f7),
                borderRadius: BorderRadius.circular(Dimension.radius10),
                // boxShadow: const [
                //   BoxShadow(
                //     color: AppColors.grey,
                //     blurRadius: 8,
                //     offset: Offset(0, 5),
                //   ),
                //   BoxShadow(
                //     color: AppColors.white20,
                //     offset: Offset(-5, 0),
                //   ),
                //   BoxShadow(
                //     color: AppColors.whiteGrey,
                //     offset: Offset(5, 0),
                //   ),
                // ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    channelListImg[index],
                  ),
                  SizedBox(height: Dimension.height10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallTxt(
                        text: "Router",
                        size: Dimension.font16,
                        color: AppColors.smallTextColor,
                      ),
                      SmallTxt(
                        text: "Wifi Extender",
                        size: Dimension.font14,
                      ),
                      SmallTxt(
                        text: "Rs. 4500",
                        size: Dimension.font14,
                        color: AppColors.green,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
