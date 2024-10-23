import 'package:dish_home/features/presentation/pages/profile/order/order_details/order_details_installation_address.dart';
import 'package:dish_home/features/presentation/pages/profile/order/order_details/order_details_items_summary.dart';
import 'package:dish_home/features/presentation/pages/profile/order/order_details/order_details_summary.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/app_colors.dart';
import '../../../../widget/custom_button.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Order ID: ",
              style: normalStyle,
            ),
            Text(
              "PKG-20230315-4",
              style: normalStyle.copyWith(color: Colors.red),
            )
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                OrderDetailsSummary(),
                SizedBox(height: 15),
                OrderDetailsInstallationAddress(),
                SizedBox(height: 15),
                OrderDetailsItemsSummary(),
                SizedBox(height: 15),
                CustomButton(
                  width: double.infinity,
                  color: AppColors.redColor,
                  text: "Cancel Order",
                  onTap: () {},
                ),
                SizedBox(height: 15),
                CustomButton(
                  width: double.infinity,
                  borderColor: Colors.red,
                  text: "Close",
                  textColor: Colors.red,
                  onTap: () {},
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
