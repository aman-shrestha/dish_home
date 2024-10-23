import 'package:flutter/material.dart';

import '../../../../../../utils/theme.dart';
import 'order_details_row.dart';

class OrderDetailsInstallationAddress extends StatelessWidget {
  const OrderDetailsInstallationAddress({super.key});

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
              "Installation Address",
              style: normalStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 20),
            OrderDetailsRow(
              title1: "District",
              subtitle1: "Kathmandu",
              title2: "Address",
              subtitle2: "Nagpokhari Marga",
            ),
          ],
        ),
      ),
    );
  }
}
