import 'package:dish_home/features/presentation/pages/offer_promo_page/offer_promo_page_tabview.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../app/home_navigation/widget/custom_app_bar.dart';

class OfferPromoPage extends StatefulWidget {
  const OfferPromoPage({super.key});

  @override
  State<OfferPromoPage> createState() => _OfferPromoPagrState();
}

class _OfferPromoPagrState extends State<OfferPromoPage>
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
      appBar: appBar("Offer & Promos"),
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
                height: Dimension.height50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius25),
                  color: AppColors.grey.withOpacity(0.3),
                ),
                child: TabBar(
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
                      child: Tab(text: "Promotion"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Tab(text: "Offers"),
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
                    OfferPromoPageTabView(),
                    //2nd tab
                    OfferPromoPageTabView(),
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
