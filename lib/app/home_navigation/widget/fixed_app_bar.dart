import 'package:dish_home/api/api_constant.dart';
import 'package:dish_home/app/home_navigation/widget/svg_custom_icon.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/profile.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../config/route/route_helper.dart';
import '../../../features/presentation/widget/small_text.dart';
import '../../../utils/app_dimension.dart';

class MyAppBar extends StatelessWidget {
  final String? pName;
  final String? pEmail;
  final String? pPhone;
  final String? pProfileImage;
  const MyAppBar(
      {super.key, this.pName, this.pEmail, this.pPhone, this.pProfileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => Profile(
                    name: pName,
                    email: pEmail,
                    phone: pPhone,
                    profileImageUrl: pProfileImage,
                  ));
              Get.to(() => Profile(name: pName, email: pEmail, phone: pPhone));
            },
            child: Container(
              alignment: Alignment.center,
              width: Adaptive.w(50),
              // width: Dimension.height230,
              padding: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius50),
                    bottomRight: Radius.circular(Dimension.radius50),
                  ),
                  color: AppColors.redColor,
                  image: const DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage("assets/icons/shadow.png"),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (pProfileImage == "" || pProfileImage == null)
                      ? CircleAvatar(
                          radius: Dimension.radius20,
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage(
                            "assets/icons/ppl.png",
                          ),
                        )
                      : Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    imageBaseUrl + pProfileImage!,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                  SizedBox(width: Dimension.width10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallTxt(
                        text: "Hi, ${pName ?? "Sumit kumar"} ",
                        color: Colors.white,
                        size: Dimension.font14,
                      ),
                      SmallTxt(
                        text: pPhone ?? "9819868628",
                        color: Colors.white,
                        size: Dimension.font14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                appBarIcon.length,
                (index) => GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Get.toNamed(RouteHelper.getNotificationPage());
                    } else if (index == 1) {
                      Get.toNamed(RouteHelper.getScannerPage());
                    } else {
                      Get.toNamed(RouteHelper.getMenuPage());
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Dimension.width5,
                    ),
                    child: myIcon(
                      appBarIcon[index],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
