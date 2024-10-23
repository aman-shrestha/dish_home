import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/about_router/about_router.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RouterRestartView extends StatelessWidget {
  const RouterRestartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Router Restart"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Restart your router by clicking on the power\n button below",
              textAlign: TextAlign.center,
              style: smallStyle.copyWith(
                color: Color.fromRGBO(102, 112, 133, 1),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 110, 101, 1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset("assets/svg/powerButton.svg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
