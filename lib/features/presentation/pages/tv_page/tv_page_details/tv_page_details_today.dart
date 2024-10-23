import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';

class TvPageDetailsTodayView extends StatelessWidget {
  final List date = [
    "04:10\n PM",
    "04:10\n PM",
    "04:10\n PM",
    "04:10\n PM",
    "04:10\n PM",
  ];
  var selectedindex = 0.obs;
  TvPageDetailsTodayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Tags(
        itemCount: date.length,
        itemBuilder: (index) {
          return GestureDetector(
            onTap: () {
              selectedindex.value = index;
            },
            child: Obx(
              () => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: selectedindex.value == index
                      ? Colors.green
                      : Colors.white,
                  border: Border.all(
                    color: Colors.green,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    date[index],
                    style: normalStyle.copyWith(
                      color: selectedindex.value == index
                          ? Colors.white
                          : Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
