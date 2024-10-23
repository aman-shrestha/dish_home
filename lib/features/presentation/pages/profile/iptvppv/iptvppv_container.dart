import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class IPTVPPVContainer extends StatelessWidget {
  final String title;
  final String price;
  final String orderId;
  final String duration;
  final String paymentMethod;
  final String paymentStatus;

  const IPTVPPVContainer(
      {super.key,
      required this.title,
      required this.price,
      required this.orderId,
      required this.duration,
      required this.paymentMethod,
      required this.paymentStatus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(242, 244, 247, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                "assets/svg/movieImg.png",
                height: 80,
                width: 60,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: normalStyle,
                  ),
                  Text(
                    price,
                    style: smallStyle.copyWith(color: Colors.green),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Order ID: ",
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                      Text(
                        orderId,
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Duration: ",
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                      Text(
                        duration,
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Payment Method: ",
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                      Text(
                        paymentMethod,
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Payment Status: ",
                        style: TextStyle(
                          color: Color.fromRGBO(102, 112, 133, 1),
                        ),
                      ),
                      Text(
                        paymentStatus,
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
