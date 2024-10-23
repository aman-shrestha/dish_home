import 'package:dish_home/features/presentation/pages/notification_page/notification_page_listview.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../utils/app_colors.dart';

class NotifiacationPage extends StatefulWidget {
  const NotifiacationPage({super.key});

  @override
  State<NotifiacationPage> createState() => _NotifiacationPageState();
}

class _NotifiacationPageState extends State<NotifiacationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Notifications"),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
              left: Dimension.height10,
              right: Dimension.height10,
              top: Dimension.height10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                // height: Dimension.height50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius25),
                  color: AppColors.grey.withOpacity(0.2),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius25),
                      border: Border.all(
                        color: AppColors.redColor,
                      )),
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Tab(text: "My inbox"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Tab(text: "App inbox"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height20),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //1st tab
                    SingleChildScrollView(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimension.height5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallTxt(
                              text: "Today",
                              size: Dimension.font16,
                              color: AppColors.grey,
                            ),
                            SizedBox(height: Dimension.height10),
                            NotificationPageListView(),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(
                              text: "Yesterday",
                              size: Dimension.font16,
                              color: AppColors.grey,
                            ),
                            NotificationPageListView(),
                          ],
                        ),
                      ),
                    ),
                    //2nd tab
                    SingleChildScrollView(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimension.height5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallTxt(
                              text: "Today",
                              size: Dimension.font16,
                              color: AppColors.grey,
                            ),
                            SizedBox(height: Dimension.height10),
                            NotificationPageListView(),
                            SizedBox(height: Dimension.height20),
                            SmallTxt(
                              text: "Yesterday",
                              size: Dimension.font16,
                              color: AppColors.grey,
                            ),
                            NotificationPageListView(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
