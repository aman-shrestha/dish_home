import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';

class OfferPromoPageTabView extends StatelessWidget {
  const OfferPromoPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/menu/offer.svg"),
                SizedBox(width: Dimension.height10),
                SmallTxt(
                  text: "Available Promos",
                  size: Dimension.font14,
                  color: AppColors.smallTextColor,
                ),
              ],
            ),
            SizedBox(height: Dimension.height10),
            Container(
              height: Dimension.height500,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      // horizontal: Dimension.height5,
                      vertical: Dimension.height5,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimension.height10,
                      vertical: Dimension.height5,
                    ),
                    height: Dimension.carasoul250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Dimension.radius10,
                      ),
                      color: const Color(0xffF2F4F7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallTxt(
                              text: "MYFIRSTORDER",
                              color: AppColors.smallTextColor,
                              size: Dimension.font20,
                            ),
                            Container(
                              height: Dimension.height35,
                              width: Dimension.height80,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(16, 24, 40, 1),
                                borderRadius: BorderRadius.circular(
                                  Dimension.radius50 * 2,
                                ),
                              ),
                              child: Center(
                                child: SmallTxt(
                                  text: "Product",
                                  size: Dimension.font14,
                                  color: AppColors.pureWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Dimension.height30),
                        SmallTxt(
                          text: promoText,
                          color: AppColors.textColors,
                          size: Dimension.font14,
                        ),
                        SizedBox(height: Dimension.height20),
                        SmallTxt(
                          text: "Valid till August 30, 2023",
                          color: AppColors.grey,
                          size: Dimension.font16,
                        ),
                        SizedBox(height: Dimension.height30),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.smallTextColor),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Dimension.radius10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: SmallTxt(text: "Add Promo"),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
