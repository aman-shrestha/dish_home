import 'package:carousel_slider/carousel_slider.dart';
import 'package:dish_home/app/home_navigation/widget/fixed_app_bar.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_circularPercentIndicator.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_features.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_products.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_slider.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_store.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_controller.dart';

import 'package:dish_home/getx_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utils/string_icon_image.dart';
import '../../widget/small_text.dart';
import 'dash_board_routerSettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.92);
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final localData = GetStorage();
  // String? hName;
  // String? hEmail;
  // String? hPhone;
  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();

    homeController.fetch();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarColor: Color(0xffffdabe),
            statusBarIconBrightness: Brightness.dark,
          ),
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64),
              child: Obx(
                () => MyAppBar(
                  pName: homeController.name.value,
                  pEmail: homeController.email.value,
                  pPhone: homeController.phone.value,
                  pProfileImage: homeController.profileImage.value,
                ),
              ),
            ),
            body: Container(
              color: Colors.white,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: Dimension.height64,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(Dimension.radius5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimension.radius50 * 2),
                                border: Border.all(
                                  color: Colors.red,
                                  width: 1,
                                ),
                              ),
                              height: Dimension.height35,
                              width: Dimension.height35,
                              child:
                                  SvgPicture.asset("assets/icons/wallet1.svg"),
                            ),
                            SizedBox(width: Dimension.width10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Dimension.height15,
                                ),
                                SmallTxt(
                                  text: "NRP 74,232",
                                  size: Dimension.font14,
                                  color: Color(0xff34A853),
                                ),
                                SmallTxt(
                                  text: "Current balance",
                                  size: Dimension.font12,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(Dimension.radius5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimension.radius50),
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 1,
                                  )),
                              height: Dimension.height35,
                              width: Dimension.height35,
                              child:
                                  SvgPicture.asset("assets/icons/badge1.svg"),
                            ),
                            SizedBox(width: Dimension.width10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Dimension.height15,
                                ),
                                SmallTxt(
                                  text: "No points",
                                  size: Dimension.font14,
                                  color: Colors.green,
                                ),
                                SmallTxt(
                                  text: "Reward points",
                                  size: Dimension.font12,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Container(
                      color: Color.fromRGBO(247, 247, 247, 1),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Carasoul

                            //Dot indicator
                          DashBoardSlider(),

                            SizedBox(height: Dimension.height10),
                            //Nuclear package
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DashBoardCircularPercentIndicator(),
                                  SizedBox(height: Dimension.height20),
                                  //nuclear package
                                  DashBoardRouterSettings(),
                                  SizedBox(height: Dimension.height20),
                                  //Package

                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Dimension.height10,
                                        bottom: Dimension.height5),
                                    child: Text(
                                      "Products",
                                      style: GoogleFonts.lato(
                                        fontSize: Dimension.font18,
                                        color: AppColors.smallTextColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: DashBoardProducts(),
                                  ),
                                  SizedBox(height: Dimension.height10),
                                  Padding(
                                    padding: EdgeInsets.all(Dimension.height10),
                                    child: Text(
                                      "Features",
                                      style: GoogleFonts.lato(
                                        fontSize: Dimension.font18,
                                        color: AppColors.smallTextColor,
                                      ),
                                    ),
                                  ),
                                  //feature section
                                  DashBoardFeatures(),
                                  SizedBox(height: Dimension.height20),
                                  DashBoardSlider(),
                                  SizedBox(height: 10),
                                  //Store
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: Dimension.height10,
                                        bottom: Dimension.height10),
                                    child: Text(
                                      "Store",
                                      style: GoogleFonts.lato(
                                        fontSize: Dimension.font18,
                                        color: AppColors.smallTextColor,
                                      ),
                                    ),
                                  ),
                                  DashBoardStore(),
                                  SizedBox(height: Dimension.height20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
