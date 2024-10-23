import 'package:dish_home/features/presentation/widget/custom_buttton_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_vlog.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../config/route/route_helper.dart';
import '../../../../utils/string_icon_image.dart';

class DishHomeGo extends StatelessWidget {
  const DishHomeGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Dish Home Go"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffDF0909),
                    Color(0xff8B29B9),
                    Color(0xff810384),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallTxt(
                      text: "DishHome Go\nPackage",
                      size: Dimension.font26,
                      color: AppColors.whiteGrey,
                    ),
                    SizedBox(height: Dimension.height30),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: Dimension.height20),
                  Center(
                    child: SmallTxt(
                      text: "Exclusive Channels on DishHome.",
                      size: Dimension.font18,
                    ),
                  ),
                  SizedBox(height: Dimension.height20),
                  SizedBox(
                    height: Dimension.height10 * 9,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: channelListImg.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            margin:
                            EdgeInsets.symmetric(horizontal: Dimension.height5),
                            height: Dimension.height70,
                            width: Dimension.height80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: AppColors.grey)),
                            child: Center(
                              child: Image.asset(
                                channelListImg[index],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 80),
                  Text("DishHome",style: TextStyle(
                    color: AppColors.redColor,
                    fontSize: Dimension.font30,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text( "In Any Device, Anytime",style:  TextStyle(
                    color: AppColors.black,
                    fontSize: Dimension.font30,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: Dimension.height10),
                  Text(dishHomeText, style: smallStyle.copyWith(
                    fontSize: Dimension.font14,
                    color: AppColors.grey
                  )),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.mobile_screen_share_sharp,
                    heading: "Portable",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.devices_rounded,
                    heading: "Support Multiple Devices",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.computer,
                    heading: "Unique content",
                    content: dishHomeText,
                  ),
                  SizedBox(height: Dimension.height30),
                  const CustomBlog(
                    icon: Icons.hd_outlined,
                    heading: "HD Quality",
                    content: dishHomeText,
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
