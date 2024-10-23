import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/device_filters/device_filters_none_tabview.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_dimension.dart';
import 'device_filters_blacklist_tabview.dart';

class DeviceFiltersView extends StatefulWidget {
  DeviceFiltersView({super.key});

  @override
  State<DeviceFiltersView> createState() => _DeviceFiltersViewState();
}

class _DeviceFiltersViewState extends State<DeviceFiltersView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
      appBar: appBar("Device Filters"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
              height: Dimension.height50,
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
                  Tab(text: "None"),
                  Tab(text: "Blacklist"),
                  Tab(text: "Whitelist"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  //1st tab
                  DeviceFiltersNoneTabView(),
                  //2nd tab
                  DeviceFiltersBlacklistTabView(),
                  //3rd tab
                  DeviceFiltersNoneTabView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
