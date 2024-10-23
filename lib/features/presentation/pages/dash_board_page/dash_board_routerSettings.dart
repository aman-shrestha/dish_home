import 'package:dish_home/features/presentation/pages/router_wifi_settings/router_wifi_settings_view.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../widget/small_text.dart';

class DashBoardRouterSettings extends StatelessWidget {
  final List img = [
    "assets/svg/wifi.svg",
    "assets/svg/diagnosis.svg",
    "assets/svg/upgrade.svg",
    "assets/svg/support2.svg",
  ];
  final List title = [
    "Wi-Fi Settings",
    "Diagnosis",
    "Upgrade Package",
    "Support",
  ];

  DashBoardRouterSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: title.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 0,
        childAspectRatio: 3,
      ),
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: GestureDetector(
          onTap: (){
            if(index == 0){
              Get.to(() => RouterWifiSettingsView());
            }
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),

            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 6,
                bottom: 6,
              ),
              child: Row(
                children: [
                  Container(
                    height: Dimension.height50,
                    width: Dimension.height50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                      color: AppColors.whiteShade,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        img[index],
                      ),
                    ),
                  ),
                  SizedBox(width: Dimension.width10),
                  SmallTxt(
                    text: title[index],
                    size: Dimension.font12,
                    color: AppColors.darkNAVY,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    //   Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         GestureDetector(
    //           onTap: () {
    //             Get.to(() => RouterWifiSettingsView());
    //           },
    //           child: Container(
    //             color: Colors.white,
    //             child: Row(
    //               children: [
    //                 Container(
    //                   height: Dimension.height50,
    //                   width: Dimension.height50,
    //                   decoration: BoxDecoration(
    //                     borderRadius:
    //                         BorderRadius.circular(Dimension.radius50 * 2),
    //                     color: AppColors.whiteShade,
    //                   ),
    //                   child: Center(
    //                     child: SvgPicture.asset(
    //                       "assets/svg/wifi.svg",
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(width: Dimension.width10),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SmallTxt(
    //                       text: "Wi-Fi Setting",
    //                       size: Dimension.font14,
    //                       color: AppColors.darkNAVY,
    //                     ),
    //                     // Row(
    //                     //   children: [
    //                     //     const Icon(
    //                     //       Icons.wifi,
    //                     //       color: AppColors.green,
    //                     //     ),
    //                     //     SizedBox(width: Dimension.width5),
    //                     //     SmallTxt(
    //                     //       text: "Online",
    //                     //       size: Dimension.font12,
    //                     //       color: AppColors.green,
    //                     //     ),
    //                     //   ],
    //                     // ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               height: Dimension.height50,
    //               width: Dimension.height50,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
    //                 color: AppColors.whiteShade,
    //               ),
    //               child: Center(
    //                 child: SvgPicture.asset(
    //                   "assets/svg/diagnosis.svg",
    //                 ),
    //               ),
    //             ),
    //             SizedBox(width: Dimension.width10),
    //             SmallTxt(
    //               text: "Diagnosis",
    //               size: Dimension.font16,
    //               color: AppColors.darkNAVY,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 12),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         GestureDetector(
    //           onTap: () {
    //             Get.to(() => RouterWifiSettingsView());
    //           },
    //           child: Row(
    //             children: [
    //               Container(
    //                 height: Dimension.height50,
    //                 width: Dimension.height50,
    //                 decoration: BoxDecoration(
    //                   borderRadius:
    //                   BorderRadius.circular(Dimension.radius50 * 2),
    //                   color: AppColors.whiteShade,
    //                 ),
    //                 child: Center(
    //                   child: SvgPicture.asset(
    //                     "assets/svg/wifi.svg",
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(width: Dimension.width10),
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   SmallTxt(
    //                     text: "Upgrade Package",
    //                     size: Dimension.font14,
    //                     color: AppColors.darkNAVY,
    //                   ),
    //                   // Row(
    //                   //   children: [
    //                   //     const Icon(
    //                   //       Icons.wifi,
    //                   //       color: AppColors.green,
    //                   //     ),
    //                   //     SizedBox(width: Dimension.width5),
    //                   //     SmallTxt(
    //                   //       text: "Online",
    //                   //       size: Dimension.font12,
    //                   //       color: AppColors.green,
    //                   //     ),
    //                   //   ],
    //                   // ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               height: Dimension.height50,
    //               width: Dimension.height50,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
    //                 color: AppColors.whiteShade,
    //               ),
    //               child: Center(
    //                 child: SvgPicture.asset(
    //                   "assets/svg/diagnosis.svg",
    //                 ),
    //               ),
    //             ),
    //             SizedBox(width: Dimension.width10),
    //             SmallTxt(
    //               text: "Support",
    //               size: Dimension.font16,
    //               color: AppColors.darkNAVY,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
