import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewProductsDetailsCustomImageSlider extends StatelessWidget {
  final List<String> img = [
    "assets/img/slider.png",
    "assets/img/img.png",
    "assets/svg/delete.png",
    "assets/svg/dishhome.png",
  ];

  var selectedimg=0.obs;
  ViewProductsDetailsCustomImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(img[selectedimg.value]), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              // color: Colors.black,
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: img.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      // index == 0? selectedimg.value = img[0]: selectedimg.value = img[1];
                      selectedimg.value = index;
                    },
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(img[index]), fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
