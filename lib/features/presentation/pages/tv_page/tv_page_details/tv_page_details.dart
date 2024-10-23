import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details_booking_summary.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details_checkout/tv_page_details_checkout.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details_container.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details_today.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_dimension.dart';
import '../../../widget/small_text.dart';

class TvPageDetails extends StatelessWidget {
  var details = [
    "Starring: Anmol Kc, Robin Tamang, Kamal Mani Nepal, Srijana Subba, Devu Shrestha, Resha Ale Magar, Ian Scott Clement, Santosh Mizar, Afraan Ali, Nigam Shrestha, Chiranjibi Adhikari, Kumar Ghalan, Ravi Chaudhary, Emanuel Rai (Child Mendog) "
  ];
  var detail = true.obs;
  final List genre = [
    "comedy",
    "Drama",
    "Action",
    "Thriller",
    "+4",
  ];
  var selectedindex = 0.obs;
  TvPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(""),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TvPageDetailsContainer(),
                SizedBox(height: 20),
                Text(
                  "Description",
                  style:
                      smallStyle.copyWith(color: Color.fromRGBO(52, 64, 84, 1)),
                ),
                Obx(
                  () => Text(details[0],
                      style: smallStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: detail.value ? 2 : 200),
                ),
                GestureDetector(
                  onTap: () {
                    detail.value = !detail.value;
                  },
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        "Read full description",
                        style: smallStyle.copyWith(
                            color: Color.fromRGBO(223, 71, 63, 1)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Tags(
                  itemCount: genre.length,
                  itemBuilder: (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius10),
                        color: Color.fromRGBO(254, 246, 246, 1),
                      ),
                      height: Dimension.height30,
                      width: Dimension.height60,
                      child: Center(
                        child: SmallTxt(
                          text: genre[index],
                          color: Color.fromRGBO(240, 71, 78, 1),
                          size: Dimension.font12,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 16),
                Text(
                  details[0],
                  style: smallStyle.copyWith(
                    color: Color.fromRGBO(52, 64, 84, 1),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Show Time",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectedindex.value = 0;
                        },
                        child: Text(
                          "Today\n" + "(December 4)",
                          style: smallStyle.copyWith(
                              color: selectedindex.value == 0
                                  ? Colors.red
                                  : Colors.black),
                        ),
                      ),
                      SvgPicture.asset("assets/svg/Line.svg"),
                      GestureDetector(
                          onTap: () {
                            selectedindex.value = 1;
                          },
                          child: Text(
                            "Today\n" + "(December 4)",
                            style: smallStyle.copyWith(
                                color: selectedindex.value == 1
                                    ? Colors.red
                                    : Colors.black),
                          )),
                      SvgPicture.asset("assets/svg/Line.svg"),
                      GestureDetector(
                          onTap: () {
                            selectedindex.value = 2;
                          },
                          child: Text(
                            "Today\n" + "(December 4)",
                            style: smallStyle.copyWith(
                                color: selectedindex.value == 2
                                    ? Colors.red
                                    : Colors.black),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                changeView(),
                SizedBox(height: 20),
                TvPageDetailsBookingSummary(),
                SizedBox(height: 24),
                CustomButton(
                  onTap: () {
                    Get.to(() => TvPageDetailsCheckout());
                  },
                  color: Color.fromRGBO(237, 28, 36, 1),
                  text: "Book Now",
                  textColor: Colors.white,
                  width: double.infinity,
                ),
                SizedBox(height: 10),
                CustomButton(
                  color: Colors.white,
                  text: "Cancel",
                  borderColor: Color.fromRGBO(237, 28, 36, 1),
                  textColor: Color.fromRGBO(237, 28, 36, 1),
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  changeView() {
    if (selectedindex == 0) {
      return TvPageDetailsTodayView();
    }
  }
}
