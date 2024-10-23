import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Login',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: GestureDetector(
        onTap: () {
          Get.to(() => LoginPage());
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color.fromRGBO(237, 28, 36, 1))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Text(
              'Skip to Login',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(237, 28, 36, 1),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        SvgPicture.asset(
          "assets/svg/slide1.svg",
          // height: MediaQuery.of(context).size.height * 0.6,
          // width: double.infinity,
        ),
        SvgPicture.asset(
          "assets/svg/slide2.svg",
          // height: MediaQuery.of(context).size.height * 0.6,
          // width: double.infinity,
        ),
        SvgPicture.asset(
          "assets/svg/slide3.svg",
          // height: MediaQuery.of(context).size.height * 0.6,
          // width: double.infinity,
        ),
        SvgPicture.asset(
          "assets/svg/slide4.svg",
          // height: MediaQuery.of(context).size.height * 0.6,
          // width: double.infinity,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        // Container(
        //   height: 100,
        //   width: 10,
        //   color: Colors.black,
        // ),
        Container(
          // alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text('Offers and Promos',
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 20,
              ),
              Text('Get exciting offers and promos.',
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1))),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text('Movies',
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'Watch your favorites show easily and always anywhere, anytime.',
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1))),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text('KYC Verification',
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 20,
              ),
              Text('Verify your KYC to access to full features of the app.',
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1))),
            ],
          ),
        ),
        Container(
          // alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text('WIFI Password Change',
                  style: mediumStyle.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 20,
              ),
              Text('Change your WIFI password.',
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1))),
            ],
          ),
        ),
      ],
    );
  }
}
