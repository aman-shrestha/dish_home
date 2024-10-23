import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_details_add%20location/view_products_details_addLocation.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_details_orderSummary.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_details_rewardPoints.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_order.dart';
import 'package:dish_home/features/presentation/widget/checkbox.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../widget/checkbox_circular.dart';

class ViewProductsDetailsCheckout extends StatelessWidget {
  final List img = [
    "assets/svg/yourOrder.png",
    "assets/svg/yourOrder.png",
  ];
  final List title = [
    "Wi-Fi Extender",
    "Wi-Fi Extender",
  ];
  final List price = [
    "Rs.450",
    "Rs.450",
  ];
  ViewProductsDetailsCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Checkout"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Shipping Address",
                      style: normalStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ViewProductsDetailsAddLocation());
                      },
                      child: Text(
                        "Add Location",
                        style: normalStyle.copyWith(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "You can edit your shipping address or choose the added one",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Color.fromRGBO(152, 162, 179, 1))),
                  child: Row(
                    children: [
                      CheckboxCircular(),
                      Text(
                        "Thapathali",
                        style: smallStyle,
                      ),
                      Spacer(),
                      Text(
                        "Edit",
                        style: smallStyle.copyWith(color: Colors.red),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Delete",
                        style: smallStyle.copyWith(color: Colors.red),
                      ),
                      SizedBox(width: 16)
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(height: 24),
                Text(
                  "Payment Method",
                  style: normalStyle,
                ),
                SizedBox(height: 10),
                Text(
                  "You can choose your desired payment method.",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Color.fromRGBO(152, 162, 179, 1))),
                  child: Row(
                    children: [
                      CheckboxCircular(),
                      Text(
                        "Cash on Delivery",
                        style: smallStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border:
                          Border.all(color: Color.fromRGBO(152, 162, 179, 1))),
                  child: Row(
                    children: [
                      CheckboxCircular(),
                      Text(
                        "Online Delivery",
                        style: smallStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(height: 24),
                Text(
                  "Your Orders",
                  style: normalStyle,
                ),
                SizedBox(height: 16),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ViewProductsOrder(
                          img: img[index],
                          title: title[index],
                          price: price[index]),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
                SizedBox(height: 24),
                ViewProductsDetailsRewardPoints(),
                SizedBox(height: 12),
                ViewProductsDetailsOrderSummary(),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Voucher',
                  ),
                ),
                SizedBox(height: 12),
                CustomButton(
                  color: Color.fromRGBO(223, 227, 236, 1),
                  text: "Apply",
                  textColor: Colors.black,
                  width: double.infinity,
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    "You will get 0 reward points",
                    style: normalStyle.copyWith(color: Colors.green),
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  color: Color.fromRGBO(237, 28, 36, 1),
                  text: "text",
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
