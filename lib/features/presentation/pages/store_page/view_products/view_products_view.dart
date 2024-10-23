import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_filter_page.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_gridView.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../store_page_newArrivals_gridView.dart';

class ViewProductsView extends StatelessWidget {
  final emailContr = TextEditingController();
  ViewProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Shop by Categories"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: 'Search for Coverage area',
                        icon: Icons.search,
                        isObscure: false,
                        textController: emailContr,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ViewProductsFilterPage());
                      },
                      child: SvgPicture.asset(
                        "assets/svg/category.svg",
                        height: 55,
                        width: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                GestureDetector(
                    onTap: () {
                      Get.to(() => ViewProductsDetails());
                    },
                    child: ViewProductsGridView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
