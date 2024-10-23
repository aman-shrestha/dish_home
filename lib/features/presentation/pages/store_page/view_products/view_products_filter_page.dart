import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_view.dart';
import 'package:dish_home/features/presentation/widget/checkbox.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/custom_icon.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/features/presentation/widget/switch.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:get/get.dart';

class ViewProductsFilterPage extends StatelessWidget {
  ViewProductsFilterPage({super.key});

  final List<String> items = [
    'a',
    'b',
    'c',
    'd',
  ];
  final List<Color> color = [
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
  ];

  final emailContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Product Filter",
        ),
        leading: Container(),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => ViewProductsView());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: SvgPicture.asset(
                  "assets/svg/cross.svg",
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTextField(
                      icon: Icons.search,
                      textController: emailContr,
                      hintText: "min price",
                      size: 170,
                    ),
                    AppTextField(
                      icon: Icons.search,
                      textController: emailContr,
                      hintText: "max price",
                      size: 170,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Manufacturer",
                  style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Tags(
                  itemCount: items.length,
                  itemBuilder: (index) {
                    return Container(
                      width: 100,
                      child: Row(
                        children: [
                          CheckboxExample(),
                          Text(items[index]),
                        ],
                      ),
                    );
                  },
                ),
                Text(
                  "Categories",
                  style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Tags(
                  itemCount: items.length,
                  itemBuilder: (index) {
                    return Container(
                      width: 100,
                      child: Row(
                        children: [
                          CheckboxExample(),
                          Text(items[index]),
                        ],
                      ),
                    );
                  },
                ),
                Text(
                  "Color",
                  style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Tags(
                  itemCount: color.length,
                  itemBuilder: (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: color[index],
                          ),
                          child: Text(""),
                        ),
                      ),
                    );
                  },
                ),
                Text(
                  "Product Tag",
                  style: normalStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Tags(
                  itemCount: items.length,
                  itemBuilder: (index) {
                    return Container(
                      width: 100,
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Color.fromRGBO(228, 231, 236, 1))),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Text(items[index]),
                              )),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                CustomButton(
                  color: Color.fromRGBO(237, 28, 36, 1),
                  text: "Apply",
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
