import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/features/presentation/pages/store_page/store_page_devices_row.dart';
import 'package:dish_home/features/presentation/pages/store_page/store_page_newArrivals_gridView.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_view.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/home_navigation/widget/fixed_app_bar.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/string_icon_image.dart';

class DishHomeStorePage extends StatefulWidget {
  const DishHomeStorePage({super.key});

  @override
  State<DishHomeStorePage> createState() => _DishHomeStorePageState();
}

class _DishHomeStorePageState extends State<DishHomeStorePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(64),
            child: MyAppBar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: Dimension.height180,
                    scrollDirection: Axis.horizontal,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
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
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius5),
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

                SizedBox(height: Dimension.height20),
                SmallTxt(
                  text: "Shop by Categories",
                  size: Dimension.font18,
                ),
                SizedBox(height: Dimension.height5),
                SmallTxt(
                  text: "Get the best deals, NOW!",
                  color: AppColors.grey,
                  size: Dimension.font14,
                ),
                SizedBox(height: Dimension.height5),

                StorePageDevicesRow(),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ViewProductsView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View all Products",
                        style: normalStyle.copyWith(color: Colors.red),
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: AppColors.grey,
                  thickness: 0.6,
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(height: Dimension.height20),
                SmallTxt(text: "New Arrivals", size: Dimension.font18),
                SizedBox(height: Dimension.height5),
                SmallTxt(
                  text: "Get the best deals, NOW!",
                  color: AppColors.grey,
                  size: Dimension.font14,
                ),
                SizedBox(height: Dimension.height10),
                // StorePageNewArrivalsGridView(),
                SizedBox(height: Dimension.height10),

                ///
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: Dimension.height180,
                    scrollDirection: Axis.horizontal,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
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
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius5),
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
                SizedBox(height: Dimension.height10),
                SmallTxt(
                  text: "Hot Deals",
                  size: Dimension.font18,
                ),
                SizedBox(height: Dimension.height5),
                SmallTxt(
                  text: "Deals you find nowhwere else",
                  color: AppColors.grey,
                  size: Dimension.font14,
                ),
                SizedBox(height: Dimension.height10),
                //
                StorePageNewArrivalsGridView(),

                SizedBox(height: Dimension.height10),
                SmallTxt(text: "Our Brands", size: Dimension.font18),
                SizedBox(height: Dimension.height5),
                SmallTxt(
                  text: "Best product from best brands",
                  color: AppColors.grey,
                  size: Dimension.font14,
                ),
                SizedBox(height: Dimension.height10),
                StorePageDevicesRow(),

                SizedBox(height: Dimension.height30),
                const Divider(
                  color: AppColors.grey,
                  thickness: 0.6,
                  indent: 25,
                  endIndent: 25,
                ),
                SmallTxt(text: "Feature Products", size: Dimension.font18),
                SizedBox(height: Dimension.height5),
                SmallTxt(
                    text: "Take a look what's new, RIGHT NOW",
                    size: Dimension.font14,
                    color: AppColors.grey),
                SizedBox(height: Dimension.height10),
                Container(
                  // height: Dimension.height400,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (ctx, index) {
                        return Container(
                          // height: Dimension.height180,
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimension.height10,
                              vertical: Dimension.height10),
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimension.height30,
                              vertical: Dimension.height10),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius10),
                            color: AppColors.darkNAVY,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SmallTxt(
                                    text: "Router",
                                    color: AppColors.grey,
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  SmallTxt(
                                      text: "Wifi Extender",
                                      color: AppColors.cardColor,
                                      size: Dimension.font20),
                                  SmallTxt(
                                    text: "Rs. 7,900",
                                    size: Dimension.font20,
                                    color: AppColors.green,
                                  ),
                                ],
                              ),
                              Image.asset(
                                routerList[0],
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
