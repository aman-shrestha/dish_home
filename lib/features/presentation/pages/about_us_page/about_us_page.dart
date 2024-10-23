import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/carasoul_widget/carasoul_slider.dart';
import 'package:dish_home/features/presentation/widget/custom_blog_center.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/string_icon_image.dart';
import '../../carasoul_widget/carasoul_slider_full.dart';
import '../../widget/small_text.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("About Us"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Carasoul
            const CarasoulSliderPage(),
            //text
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "Dish Media Network Limited “DishHome” is 1 of the fastest growing companies in Nepal’s broadcast and internet service industry. DMN was established in 2009 as Nepal’s first and only Direct-to-Home (DTH) Television service provider. The company is directly connected to their 2 million-plus households frommultiple platforms such as DTH, IPTV, OTT, DVB-C/T2 and ISP (residential and commercial). One of the major strengths of DMN is its expansive network of over 4000+ Dealers, Sub Dealers and Service Franchises who provide immediate service to our customers.",
                style: smallStyle.copyWith(
                    color: Color.fromRGBO(102, 112, 133, 1)),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "After a long and successful experience of over 12 years in Pay-Tv service, DishHome launched its FTTH Internet service under the brand name “DishHome Fibernet” in 2020. As of now, DishHome Fibernet is providing internet service to over 250,000 satisfied internet customers through a nationwide FTTH network and supported by certified and experienced inhouse Engineers and Technicians.",
                style: smallStyle.copyWith(
                    color: Color.fromRGBO(102, 112, 133, 1)),
              ),
            ),
            SizedBox(height: Dimension.height20),
            const CarasoulSliderPageFull(),
            SizedBox(height: Dimension.height20),
            Text(
              "Our Mission & Vision",
              style: mediumStyle.copyWith(fontWeight: FontWeight.w700),
            ),

            SizedBox(height: Dimension.height20),
            const CustomBlogCenter(
              icon: Icons.phone_android_rounded,
              heading: "Mission",
              content:
                  "We envision DishHome to be a part of every household of Nepal, driving a new era of development, growth and productivity.",
            ),
            SizedBox(height: Dimension.height20),
            const CustomBlogCenter(
              icon: Icons.phone_android_rounded,
              heading: "Vision",
              content:
                  "Our mission is to win the hearts of every individual in Nepal, serving even the remotest part, with the best of entertainment and infotainment services, connecting them to the world.",
            ),
            SizedBox(height: Dimension.height20),
            const CarasoulSliderPageFull(),
            SizedBox(height: Dimension.height20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer Satisfaction",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "We make every effort to satisfy customers with superior quality, service and value",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                  Text(
                    "Respect",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "We value all our people with highest regards and encourage their development.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                  Text(
                    "Eternal Innovation",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "We challenge conventional thinking and encourage them to be creative and disruptive.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                  Text(
                    "Accountability",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "We take ownership of our commitments.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                  Text(
                    "Teamwork",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "Stronger when we are together.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                  Text(
                    "Continuous Improvement",
                    style: normalStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: Dimension.height10),
                  Text(
                    "We stretch our boundaries to become better every day.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  SizedBox(height: Dimension.height30),
                ],
              ),
            ),
            SizedBox(height: Dimension.height30),
            Center(
                child: Text(
              "We do whatever it takes\n to provide the very\n best quality services.",
              style: mediumStyle.copyWith(fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            )),
            SizedBox(height: Dimension.height20),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "We provide services in such a way that the trust we receive from our customers is significant. We have cooperated so well to sort out many of their issues and concerns by developing lasting positive coordination. We look forward to becoming a loyal working partner at all times.",
                style: smallStyle.copyWith(
                    color: Color.fromRGBO(102, 112, 133, 1)),
              ),
            ),
            SizedBox(height: Dimension.height30),
          ],
        ),
      ),
    );
  }
}
