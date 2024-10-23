import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widget/checkbox.dart';
import '../../widget/small_text.dart';
import 'recharge_confirm_page.dart';

class RechargePage extends StatefulWidget {
  final List<String> items = [
    'Recharge using PIN',
    'Online Recharge',
    'Recharge by Reward',
  ];

  RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> {
  List rechargeMethod = ["Recharge using PIN", "Online Recharge"];
  bool isSelected = false;
  int selectedIndex = 0;
  int selectedRadioButton = 0;
  var index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Recharge"),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: Dimension.height500,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: Dimension.height10,
                  vertical: Dimension.height10,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius10),
                  color: AppColors.cardColor.withOpacity(0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimension.height10),
                    Align(
                      alignment: Alignment.center,
                      child: SmallTxt(
                        text: "DishHome Recharge",
                        size: Dimension.font20,
                        color: AppColors.darkNAVY,
                      ),
                    ),
                    SizedBox(height: Dimension.height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 150,
                            // height: Dimension.height40 * 1.3,
                            // width: Dimension.height180,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.height10),
                              color: Colors.white,
                              border: Border.all(
                                color: selectedIndex == index
                                    ? AppColors.marronColor
                                    : Colors.white,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Center(
                                child: SmallTxt(
                                  text: index == 0 ? "Self" : "Others",
                                  color: selectedIndex == index
                                      ? AppColors.marronColor
                                      : AppColors.darkNAVY,
                                  size: Dimension.font20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Dimension.height20),
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  index.value = 1;
                                },
                                child: Container(
                                  width: 20.0, // Set the desired width
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index.value == 1
                                              ? Colors.green
                                              : Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text("Recharge using PIN"),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  index.value = 2;
                                },
                                child: Container(
                                  width: 20.0, // Set the desired width
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index.value == 2
                                              ? Colors.green
                                              : Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text("Online Recharge"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  index.value = 3;
                                },
                                child: Container(
                                  width: 20.0, // Set the desired width
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index.value == 3
                                              ? Colors.green
                                              : Colors.transparent),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text("Recharge by Reward"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: List.generate(
                    //     rechargeMethod.length,
                    //     (index) => Row(
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             setState(() {
                    //               isSelected = !isSelected;
                    //               selectedRadioButton = index;
                    //             });
                    //           },
                    //           child: Container(
                    //             // height: Dimension.height30,
                    //             // width: Dimension.height30,
                    //             padding: const EdgeInsets.all(5),
                    //             margin: EdgeInsets.all(5),
                    //             decoration: BoxDecoration(
                    //               borderRadius:
                    //                   BorderRadius.circular(Dimension.height15),
                    //               border: Border.all(
                    //                 color: AppColors.grey,
                    //               ),
                    //             ),
                    //             child: Container(
                    //               height: 10,
                    //               width: 10,
                    //               decoration: BoxDecoration(
                    //                 borderRadius:
                    //                     BorderRadius.circular(Dimension.height15),
                    //                 color: selectedRadioButton == index
                    //                     ? AppColors.green
                    //                     : Colors.transparent,
                    //                 border: Border.all(
                    //                   color: selectedRadioButton == index
                    //                       ? AppColors.grey
                    //                       : Colors.transparent,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SmallTxt(
                    //           text: rechargeMethod[index],
                    //           color: AppColors.darkNAVY,
                    //           size: Dimension.font14,
                    //         ),
                    //       ],
                    //     ),
          
                    //   ),
                    // ),
                    SizedBox(height: Dimension.height30),
                    Obx(
                      () => (index.value == 1)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallTxt(
                                  text: "Customer ID",
                                  size: Dimension.font18,
                                  color: AppColors.smallTextColor,
                                ),
                                SizedBox(height: Dimension.height5),
                                MyTextField(hintText: "2275483"),
                                SizedBox(height: Dimension.height20),
                                SmallTxt(
                                  text: "Voucher PIN",
                                  size: Dimension.font18,
                                  color: AppColors.smallTextColor,
                                ),
                                SizedBox(height: Dimension.height5),
                                MyTextField(hintText: "33197726411"),
                                SizedBox(height: Dimension.height20),
                                CustomButton(
                                  color: AppColors.redColor,
                                  text: "Go",
                                  width: double.infinity,
                                  onTap: () {
                                    Get.to(const RechargeConfirmPage());
                                  },
                                ),
                              ],
                            )
                          : (index.value == 2)
                              ? Container(
                        child: RechargeConfirmPage(),
                      )
                              : Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
