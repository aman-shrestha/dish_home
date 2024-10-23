import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details.dart';
import 'package:dish_home/features/presentation/widget/big_text.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../app/home_navigation/widget/fixed_app_bar.dart';

class TvPage extends StatefulWidget {
  List<String> tagsList = [
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM'
  ];
  TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar("PPV"),
          body: Container(
            height: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                          autoPlay: true,
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
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
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
                    SizedBox(
                      height: Dimension.height15,
                    ),
                    SmallTxt(
                      text: "Now Showing",
                      size: Dimension.font18,
                      color: AppColors.black,
                    ),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimension.height5,
                        vertical: Dimension.height10,
                      ),
                      height: Dimension.height500,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => TvPageDetails());
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Dimension.height10,
                                        right: Dimension.height10),
                                    margin: EdgeInsets.only(
                                      right: Dimension.height10,
                                    ),
                                    width: Dimension.height180,
                                    height: Dimension.height280,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimension.height10,
                                      ),
                                      color: Colors.black12,
                                      image: const DecorationImage(
                                        image:
                                            AssetImage("assets/img/slider.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  BigText(
                                    text: "Pulp Fuction",
                                    size: Dimension.font16,
                                  ),
                                  Container(
                                    // height: 100,
                                    width: Dimension.height180,
                                    child: Text(
                                      "Show Channel: CinemaGhar88",
                                      maxLines: 2,
                                      style: smallStyle.copyWith(
                                        color: AppColors.grey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   width: Dimension.height180,
                                  //   child: SmallTxt(
                                  //     text: "Show Channel : Zee cinema",

                                  //     color: AppColors.grey,
                                  //     size: Dimension.font14,

                                  //   ),
                                  // ),
                                  SizedBox(height: Dimension.height5),

                                  Expanded(
                                    child: Tags(
                                      itemCount: widget.tagsList.length,
                                      itemBuilder: (index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimension.radius10),
                                            color: Colors.green,
                                          ),
                                          height: Dimension.height30,
                                          width: Dimension.height60,
                                          child: Center(
                                            child: SmallTxt(
                                              text: widget.tagsList[index],
                                              color: Colors.white,
                                              size: Dimension.font12,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
