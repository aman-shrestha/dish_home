import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/theme.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/text_field.dart';

class TvPageDetailsCheckoutOnlinePayment extends StatelessWidget {
  const TvPageDetailsCheckoutOnlinePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset("assets/svg/esewa.png"),
            SizedBox(width: 10),
            Image.asset("assets/svg/khalti.png"),
          ],
        ),
        Text(
          "Use Voucher Coupon",
          style: smallStyle,
        ),
        SizedBox(height: 8),
        MyTextField(hintText: "Enter Coupon Code"),
        SizedBox(height: 24),
        CustomButton(
          color: Color.fromRGBO(128, 128, 128, 1),
          text: "Redeem now",
          width: double.infinity,
        ),
        SizedBox(height: 16),
        Center(
          child: Text(
            "OR",
            style: smallStyle.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 16),
        CustomButton(
          color: Color.fromRGBO(128, 128, 128, 1),
          text: "Subscribe now",
          textColor: Colors.white,
          width: double.infinity,
        ),
      ],
    );
  }
}
