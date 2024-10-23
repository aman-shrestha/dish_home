import 'package:flutter/material.dart';

import '../../../../../../utils/theme.dart';

class OrderDetailsRow extends StatelessWidget {
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  const OrderDetailsRow(
      {super.key,
      required this.title1,
      required this.subtitle1,
      required this.title2,
      required this.subtitle2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: normalStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 10),
            Text(
              subtitle1,
              style: smallStyle.copyWith(),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title2,
              style: normalStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 10),
            Text(
              subtitle2,
              style: smallStyle.copyWith(),
            ),
          ],
        ),
      ],
    );
  }
}
