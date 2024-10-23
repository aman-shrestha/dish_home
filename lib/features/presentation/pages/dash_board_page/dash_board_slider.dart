import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';

class DashBoardSlider extends StatefulWidget {

   DashBoardSlider({super.key});

  @override
  State<DashBoardSlider> createState() => _DashBoardSliderState();
}

class _DashBoardSliderState extends State<DashBoardSlider> {
  PageController pageController = PageController(viewportFraction: 0.92);

  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
    // homeController.fetch();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                        borderRadius: BorderRadius.circular(
                            Dimension.radius5),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          sliderImage.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () =>
                  _controller.animateToPage(entry.key),
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
      ],
    );

  }
}
