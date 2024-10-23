import 'package:dish_home/features/presentation/pages/profile/order/order_details/order_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/theme.dart';

class OrderContainer extends StatelessWidget {
  final String title;
  final String orderid;
  final String date;

  const OrderContainer(
      {super.key,
      required this.title,
      required this.orderid,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(242, 244, 247, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset("assets/svg/documentsImg.png",height: 100,width: 80,),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: smallStyle.copyWith(color: Colors.red),
                  ),
                  SizedBox(height: 8),
                  Text(
                    orderid,
                    style: normalStyle,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/calendar.svg"),
                      SizedBox(width: 10),
                      Text(
                        date,
                        style: smallStyle.copyWith(
                            color: Color.fromRGBO(102, 112, 133, 1)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => OrderDetailsView());
                    },
                    child: Row(
                      children: [
                        Text(
                          "View Details",
                          style: normalStyle.copyWith(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
