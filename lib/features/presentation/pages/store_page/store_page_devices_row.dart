import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../../../utils/theme.dart';
import '../../widget/small_text.dart';

class StorePageDevicesRow extends StatelessWidget {
  const StorePageDevicesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: Dimension.height30,
            width: Dimension.height30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                color: AppColors.whiteShade),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                size: Dimension.icon24 - 4,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.only(top: Dimension.height45),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: routerList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: Adaptive.h(16),
                          width: Adaptive.w(30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(Dimension.radius15),
                              color: Color(0xffd9d9d9),
                              border:
                              Border.all(color: AppColors.whiteShade)),
                          child: Center(
                            child: Image.asset(
                              routerList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SmallTxt(
                        text: routerName[index],
                        size: Dimension.font16,
                      ),
                      Container(
                        width: 100,
                        child: Text(
                            "DishHome presents World classsdafasfasdfasdfasd...",
                            // routerContent[index],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: smallStyle.copyWith(
                              color: AppColors.smallTextColor,
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: Dimension.height30,
            width: Dimension.height30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                color: AppColors.whiteShade),
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                size: Dimension.icon24 - 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}