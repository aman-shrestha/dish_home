import 'package:dish_home/features/presentation/widget/checkbox.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../view_products_add_substract_row.dart';

class ViewProductsOrder extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  var no = 1.obs;
  ViewProductsOrder(
      {super.key, required this.img, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(249, 250, 251, 1)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CheckboxExample(),
              SizedBox(width: 10),
              Container(
                height: 80,
                width: 60,
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: normalStyle,
                  ),
                  SizedBox(height: 5),
                  Text(
                    price,
                    style: smallStyle.copyWith(color: Colors.green),
                  ),
                  SizedBox(height: 5),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              no.value++;
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(228, 231, 236, 1))),
                                child: Icon(Icons.add))),
                        SizedBox(width: 20),
                        Text(no.value.toString()),
                        SizedBox(width: 20),
                        GestureDetector(
                            onTap: () {
                              if (no.value == 0) {
                              } else {
                                no.value--;
                              }
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(228, 231, 236, 1))),
                                child: Icon(Icons.remove))),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset("assets/svg/delete.svg")
            ],
          ),
        ),
      ),
    );
  }
}
