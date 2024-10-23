import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/theme.dart';

class ViewProductsAddSubstractRow extends StatelessWidget {
  var no = 1.obs;
  ViewProductsAddSubstractRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rs. 4,500",
              style: normalStyle.copyWith(color: Colors.green),
            ),
            GestureDetector(
                onTap: () {
                  no.value++;
                },
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Color.fromRGBO(228, 231, 236, 1))),
                    child: Icon(Icons.add))),
            Text(no.value.toString()),
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
                            color: Color.fromRGBO(228, 231, 236, 1))),
                    child: Icon(Icons.remove))),
          ],
        ),
      ),
    );
  }
}
