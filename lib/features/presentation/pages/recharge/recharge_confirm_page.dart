import 'dart:math';

import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import '../../widget/small_text.dart';

const List<String> channelList = <String>["Nepali", "Madrasi", "Animal planet"];
class RechargeConfirmPage extends StatefulWidget {
  const RechargeConfirmPage({super.key});

  @override
  State<RechargeConfirmPage> createState() => _RechargeConfirmPageState();
}

class _RechargeConfirmPageState extends State<RechargeConfirmPage> {
  String dropdownValue = channelList.first;
  List rechargeMethod = ["Recharge using Pin", "Online Recharge"];
  List rechargeMethodTexts = ["CIPS", "IME pay", "Esewa", "Khalti"];
  bool isSelected = false;
  int selectedIndex = 0;
  int selectedRadioButton = 0;
  int selectPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return
        // appBar: appBar("Recharge"),
        Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   // height: Dimension.height500,
            //   width: double.infinity,
            //   margin: EdgeInsets.symmetric(
            //     horizontal: Dimension.height10,
            //     vertical: Dimension.height10,
            //   ),
            //   padding: EdgeInsets.fromLTRB(8, 20, 8, 20),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(Dimension.radius10),
            //     color: AppColors.cardColor.withOpacity(0.4),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SizedBox(height: Dimension.height10),
            //       Align(
            //         alignment: Alignment.center,
            //         child: SmallTxt(
            //           text: "DishHome Recharge",
            //           size: Dimension.font26,
            //           color: AppColors.darkNAVY,
            //         ),
            //       ),
            //       SizedBox(height: Dimension.height20),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: List.generate(
            //           2,
            //           (index) => GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 selectedIndex = index;
            //               });
            //             },
            //             child: Container(
            //               height: Dimension.height40 * 1.3,
            //               width: Dimension.height180,
            //               decoration: BoxDecoration(
            //                 borderRadius:
            //                     BorderRadius.circular(Dimension.height10),
            //                 border: Border.all(
            //                   color: selectedIndex == index
            //                       ? AppColors.marronColor
            //                       : AppColors.grey,
            //                 ),
            //               ),
            //               child: Center(
            //                 child: SmallTxt(
            //                   text: index == 0 ? "Self" : "Others",
            //                   color: selectedIndex == index
            //                       ? AppColors.marronColor
            //                       : AppColors.darkNAVY,
            //                   size: Dimension.font20,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(height: Dimension.height20),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: List.generate(
            //           rechargeMethod.length,
            //           (index) => Row(
            //             children: [
            //               GestureDetector(
            //                 onTap: () {
            //                   setState(() {
            //                     isSelected = !isSelected;
            //                     selectedRadioButton = index;
            //                   });
            //                 },
            //                 child: Container(
            //                   height: Dimension.height30,
            //                   width: Dimension.height30,
            //                   padding: EdgeInsets.all(Dimension.height5),
            //                   margin: EdgeInsets.all(Dimension.height5),
            //                   decoration: BoxDecoration(
            //                     borderRadius:
            //                         BorderRadius.circular(Dimension.height15),
            //                     border: Border.all(
            //                       color: AppColors.grey,
            //                     ),
            //                   ),
            //                   child: Container(
            //                     height: 15,
            //                     width: 15,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(
            //                           Dimension.height15),
            //                       color: selectedRadioButton == index
            //                           ? AppColors.green
            //                           : Colors.transparent,
            //                       border: Border.all(
            //                         color: selectedRadioButton == index
            //                             ? AppColors.grey
            //                             : Colors.transparent,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               SmallTxt(
            //                 text: rechargeMethod[index],
            //                 color: AppColors.darkNAVY,
            //                 size: Dimension.font14,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            SizedBox(height: Dimension.height30),
            SmallTxt(
              text: "Customer ID",
              size: Dimension.font20,
              color: AppColors.smallTextColor,
            ),
            SizedBox(height: Dimension.height5),
            MyTextField(hintText: "2275483"),
            SizedBox(height: Dimension.height10),
            SmallTxt(
              text: "Voucher PIN",
              size: Dimension.font20,
              color: AppColors.smallTextColor,
            ),
            SizedBox(height: Dimension.height5),
            MyTextField(hintText: "33197726411"),
            SizedBox(height: Dimension.height20),

            DropdownMenu<String>(
              width: Dimension.height350,
              initialSelection: channelList.first,
              onSelected: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries: channelList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(
                    value: value, label: value);
              }).toList(),
            ),
            SizedBox(
              height: 20
            ),
            DataTable(
              dividerThickness: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius5),
                color: AppColors.whiteShade,
                border: Border.all(
                  color: AppColors.grey,
                ),
              ),
              border: TableBorder.all(color: AppColors.cardColor),
              columns: [
                DataColumn(
                  label: Text("Voucher"),
                  // Smalt(text: "Voucher"),
                ),
                DataColumn(
                  label: Text("Bonus"),
                ),
                DataColumn(
                  label: Expanded(
                      child: Text(
                    "Amount you get",
                    style: smallStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )),
                ),
              ],
              rows: List.generate(
                2,
                (index) => orderDetails(index),
              ),
            ),

            SizedBox(height: Dimension.height15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height10),
              padding: EdgeInsets.symmetric(horizontal: Dimension.height10),
              height: Dimension.height60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFAE29E),
              ),
              child: Center(
                child: SmallTxt(
                  text: "You will reveive 0 reward points.",
                  color: AppColors.smallTextColor,
                ),
              ),
            ),
            SizedBox(height: Dimension.height15),
            Container(
              // height: Dimension.height10 * 15,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              padding: EdgeInsets.symmetric(
                  horizontal: Dimension.height10, vertical: Dimension.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius10),
                color: AppColors.whiteShade.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  SmallTxt(
                    text: "Selcet Payment method",
                    color: AppColors.smallTextColor,
                    size: Dimension.font20,
                  ),
                  SizedBox(height: Dimension.height20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(

                        4,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectPaymentMethod = index;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.1,
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimension.width5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimension.radius10),
                              color: AppColors.white20,
                              border: Border.all(
                                color: selectPaymentMethod == index
                                    ? AppColors.green
                                    : AppColors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  paymentMethodList[index],
                                  // width: Dimension.height30,
                                  // height: Dimension.height30,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: Dimension.height5),
                                Text(rechargeMethodTexts[index]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimension.height30),
                  CustomButton(
                    color: AppColors.green,
                    text: "Recharge",
                    width: double.infinity,
                    height: 37,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataRow orderDetails(int index) {
  return DataRow(
    cells: [
      DataCell(SmallTxt(text: "TIHAR099")),
      DataCell(SmallTxt(text: "Rs. 650")),
      DataCell(SmallTxt(text: "Rs. 550")),
    ],
  );
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "orderId": "# ${Random().nextInt(10000)}",
            "date": "21 july, 2023",
            "tableNo": "0${Random().nextInt(20)}",
            "amount": "Rs. ${Random().nextInt(3000)}",
            "paymentMethod": "Esewa",
            "manage": "...",
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]["orderId"].toString())),
      DataCell(Text(_data[index]["date"].toString())),
      DataCell(Text(_data[index]["tableNo"].toString())),
      DataCell(Text(_data[index]["amount"].toString())),
      DataCell(Text(_data[index]["paymentMethod"].toString())),
      DataCell(Text(_data[index]["manage"].toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
