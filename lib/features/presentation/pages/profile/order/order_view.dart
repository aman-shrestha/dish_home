import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/profile/order/order_container.dart';
import 'package:dish_home/features/presentation/widget/custom_row.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../utils/app_dimension.dart';

import '../../../widget/small_text.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _DataUsagePageState();
}

class _DataUsagePageState extends State<OrderView>
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
      appBar: appBar("My Order"),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimension.height5, vertical: Dimension.height10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimension.height5),
                height: Dimension.height50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius25),
                  color: AppColors.grey.withOpacity(0.1),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      border: Border.all(
                        color: AppColors.redColor,
                      )),
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Tab(text: "Package Order"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Tab(text: "Product Order"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimension.height20),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.height5),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return OrderContainer(
                                    title: "New",
                                    orderid: "Order PKG-20230315-4",
                                    date: "15 Mar 2023 19:39 PM");
                              })
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return OrderContainer(
                                    title: "New",
                                    orderid: "Order PKG-20230315-4",
                                    date: "15 Mar 2023 19:39 PM");
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
