import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../widget/small_text.dart';

class SpeedTest extends StatefulWidget {
  const SpeedTest({super.key});

  @override
  State<SpeedTest> createState() => _SpeedTestState();
}

class _SpeedTestState extends State<SpeedTest> {
  bool go = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Speed Test"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height20,
            vertical: Dimension.height20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    go = !go;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                    color: go
                        ? Color.fromRGBO(255, 110, 101, 1)
                        : AppColors.darkNAVY,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SmallTxt(
                      text: go ? "Start" : "Running",
                      size: Dimension.font32,
                      color: AppColors.whiteShade,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimension.height10),
              SmallTxt(
                text: "Finding Optimal Server",
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
