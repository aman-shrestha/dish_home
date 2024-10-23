import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class ViewProductsDetailsOrderSummary extends StatelessWidget {
  const ViewProductsDetailsOrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Order Summary",
              style: normalStyle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Total",
                  style: smallStyle,
                ),
                Text(
                  "1 Month",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Voucher Discount",
                  style: smallStyle,
                ),
                Text(
                  "Rs. 4",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: smallStyle,
                ),
                Text(
                  "Rs. 4",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping Charge",
                  style: smallStyle,
                ),
                Text(
                  "Rs. 4",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Amount",
                  style: normalStyle,
                ),
                Text(
                  "Rs. 4",
                  style: normalStyle.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
