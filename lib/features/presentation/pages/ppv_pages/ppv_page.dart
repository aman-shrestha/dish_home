import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PpvPage extends StatefulWidget {
  const PpvPage({super.key});

  @override
  State<PpvPage> createState() => _PpvPageState();
}

class _PpvPageState extends State<PpvPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List iconName = ["DishHome DTH", "DH Play", "iTV", "DVB-T2"];
  List plans = [
    "3 plans",
    "3 plans",
    "3 plans",
    "3 plans",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("TV/Package"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select the plan that suits you.",
                  style: smallStyle.copyWith(color: AppColors.grey),
                ),
                SizedBox(height: Dimension.height20),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: tvIconList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getDishHomeDTH());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(254, 246, 246, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration:BoxDecoration(
                              color:Colors.red,
                                    shape: BoxShape.circle
                          ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: SvgPicture.asset("assets/svg/tv.svg",color: Colors.white,),
                                  )),
                              SizedBox(height: 24),

                              SmallTxt(text: iconName[index]),
                              SizedBox(height: 6),
                              Text(
                                plans[index],
                                style: smallStyle.copyWith(
                                    color: AppColors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: Dimension.height20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                      height: Dimension.height180,
                      scrollDirection: Axis.horizontal,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                    items: sliderImage.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimension.height5),
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimension.radius5),
                                color: AppColors.black),
                            child: Image.asset(
                              "$i",
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                //Dot indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: sliderImage.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: Dimension.height8,
                        height: Dimension.height8,
                        margin: EdgeInsets.symmetric(
                          vertical: Dimension.height8,
                          horizontal: 2.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == entry.key
                              ? AppColors.redColor
                              : AppColors.grey,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: Dimension.height10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
