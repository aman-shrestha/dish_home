import 'package:flutter/material.dart';

import '../../../../../../utils/theme.dart';
import 'order_details_row.dart';

class OrderDetailsItemsSummary extends StatelessWidget {
  const OrderDetailsItemsSummary({super.key});

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
              "Items Summary",
              style: normalStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Package Name",
              subtitle1: "100 Mbps Internet",
              title2: "Package Type",
              subtitle2: "Internet",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Duration",
              subtitle1: "1 Month",
              title2: "Drop Wire Charge",
              subtitle2: "1,000",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Router Rental Charge",
              subtitle1: "2,000",
              title2: "Internet Price",
              subtitle2: "925",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Router Rental Charge",
              subtitle1: "2,000",
              title2: "Internet Price",
              subtitle2: "925",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "Installation Charge",
              subtitle1: "0",
              title2: "Sub Total",
              subtitle2: "3,249",
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "VAT (13%)",
              subtitle1: "422",
              title2: "Total",
              subtitle2: "Rs. 3,671",
            ),
          ],
        ),
      ),
    );
  }
}
