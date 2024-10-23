import 'package:dish_home/config/route/route_helper.dart';
import 'package:dish_home/features/presentation/pages/chat_bot_page/chat_bot.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page.dart';
import 'package:dish_home/getx_controller/home_controller.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../features/presentation/pages/support_page/support_page.dart';
import 'widget/fixed_app_bar.dart';
import 'widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:dish_home/utils/app_colors.dart';
import '../../features/presentation/pages/store_page/dishhome_store.dart';
import '../../features/presentation/pages/dash_board_page/dash_board_page.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({
    super.key,
  });

  @override
  State<HomeNavigation> createState() => _HomeNavigation();
}

class _HomeNavigation extends State<HomeNavigation> {
  final _homeController = Get.find<HomeController>();
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState

    _homeController.fetch();
    super.initState();
  }

  List pages = [
    const HomePage(),
    const SupportPage(),
    const ChatBotPage(),
    const DishHomeStorePage(),
    TvPage(),
  ];

  // void onTapNavigation(int index) {
  // //   setState(() {
  // //     selectedIndex = index;
  // //   });
  // // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: pages[selectedIndex],
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.white,
          //Floating action button on Scaffold
          onPressed: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: Image.asset(
            "assets/icons/chatBot.png",
            height: Dimension.height35,
            width: Dimension.height35,
            fit: BoxFit.fill,
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(6),
          height: 50,
          //bottom navigation bar on scaffold
          color: Colors.white,

          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              5, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset(
                  "assets/menu/homm.svg",
                  color:
                      selectedIndex == 0 ? AppColors.redColor : AppColors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/menu/support.svg",
                    color: selectedIndex == 1
                        ? AppColors.redColor
                        : AppColors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/menu/stor.svg",
                  color:
                      selectedIndex == 3 ? AppColors.redColor : AppColors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/menu/tvvv.svg",
                  color:
                      selectedIndex == 4 ? AppColors.redColor : AppColors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),

        // pages[selectedIndex],
        // bottomNavigationBar: BottomAppBar(
        //   shape: const CircularNotchedRectangle(),
        //   color: Colors.white,
        //   shadowColor: Colors.white,
        //   notchMargin: 10,
        //   elevation: 0,
        //   height: 86,
        //   child: BottomNavigationBar(
        //     elevation: 0,
        //     type: BottomNavigationBarType.fixed,
        //     backgroundColor: Colors.transparent,
        //     selectedItemColor: AppColors.redColor,
        //     unselectedItemColor: AppColors.black,
        //     showSelectedLabels: false,
        //     showUnselectedLabels: false,
        //     selectedFontSize: Dimension.font14,
        //     unselectedFontSize: Dimension.font14,
        //     currentIndex: selectedIndex,
        //     onTap: onTapNavigation,
        //     items: [
        //       BottomNavigationBarItem(
        // icon: SvgPicture.asset(
        //   "assets/menu/homm.svg",
        //   color: selectedIndex == 0
        //       ? AppColors.redColor
        //       : AppColors.black,
        // ),
        //         label: "",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset(
        //           "assets/menu/support.svg",
        //           color: selectedIndex == 1
        //               ? AppColors.redColor
        //               : AppColors.black,
        //         ),
        //         label: "",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset(
        //           "assets/menu/stor.svg",
        //           color: selectedIndex == 2
        //               ? AppColors.redColor
        //               : AppColors.black,
        //         ),
        //         label: "",
        //       ),
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset(
        //           "assets/menu/tvvv.svg",
        //           color: selectedIndex == 3
        //               ? AppColors.redColor
        //               : AppColors.black,
        //         ),
        //         label: "",
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: GestureDetector(
        //   onTap: () {
        //     Get.toNamed(RouteHelper.getChatBot());
        //   },
        //   child: Material(
        //     elevation: 10,
        //     borderRadius: BorderRadius.circular(50),
        //     child: Container(
        //       decoration: BoxDecoration(
        //           color: AppColors.white20, shape: BoxShape.circle),
        //       child: Padding(
        //         padding: const EdgeInsets.all(16.0),
        //         child: Image.asset(
        //           "assets/icons/chatBot.png",
        //           height: Dimension.height35,
        //           width: Dimension.height35,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // // FloatingActionButton(

        // //   backgroundColor: AppColors.pureWhite,
        // //   elevation: 4,
        // //   onPressed: () {
        // //     Get.toNamed(RouteHelper.getChatBot());
        // //   },
        // //   child: Image.asset(
        // //     "assets/icons/chatBot.png",
        // //     height: Dimension.height35,
        // //     width: Dimension.height35,
        // //   ),
        // // ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
