import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/text_field.dart';
import 'tv_page_details_checkout_onlinePayment.dart';
import 'tv_page_details_dishHome_wallet.dart';

class TvPageDetailsCheckoutSelectPaymentMethod extends StatelessWidget {
  var index = 0.obs;
  TvPageDetailsCheckoutSelectPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Payment Method",
              style: normalStyle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          index.value = 0;
                        },
                        child: Container(
                          width: 20.0, // Set the desired width
                          height: 20.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                              color: index.value == 0
                                  ? Colors.green
                                  : Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("DishHome Wallet"),
                      SizedBox(width: 10),
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
                              color: index.value == 1
                                  ? Colors.green
                                  : Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Online Payment"),
                    ],
                  ),
                  SizedBox(height: 24),
                  changeView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  changeView() {
    if (index == 0) {
      return TvPageDetailsCheckoutDishHomeWallet();
    } else {
      return TvPageDetailsCheckoutOnlinePayment();
    }
  }
}
