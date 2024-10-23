import 'package:dish_home/features/presentation/pages/profile/order/order_details/order_details_row.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class OrderDetailsSummary extends StatelessWidget {
  const OrderDetailsSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(242, 244, 247, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Summary",
              style: normalStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Order Created",
              subtitle1: "Wed, Mar 15, 2023",
              title2: "Order Time",
              subtitle2: "07:39 PM",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Payment Method",
              subtitle1: "COD",
              title2: "Payment Status",
              subtitle2: "Not Paid",
            )
          ],
        ),
      ),
    );
  }
}
