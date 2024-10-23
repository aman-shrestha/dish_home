import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_add_substract_row.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_details_checkout.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_custom_imageSlider.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_gridView.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'view_products_bullet_points.dart';

class ViewProductsDetails extends StatelessWidget {
  const ViewProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(""),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ViewProductsDetailsCustomImageSlider(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wi-Fi Mesh Network Extender",
                      style: mediumStyle,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Availability: ",
                          style: smallStyle,
                        ),
                        Text(
                          "Not in Stock",
                          style: smallStyle.copyWith(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Brand:  ",
                          style: smallStyle,
                        ),
                        Image.asset("assets/svg/dishhome.png")
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Buy Now Best for seamless Wi-Fi signal",
                      style: smallStyle.copyWith(
                          color: Color.fromRGBO(195, 141, 10, 1)),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset("assets/svg/share.png"),
                        SizedBox(width: 8),
                        Text(
                          "Share ",
                          style: smallStyle,
                        ),
                        SizedBox(width: 24),
                        Image.asset("assets/svg/heart.png"),
                        SizedBox(width: 8),
                        Text(
                          "Add to Wishlist",
                          style: smallStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "The Wi-Fi Mesh Network Extender of DishHome Fibernet is the form of a Wi-Fi booster. It is the smart-whole-home- Wi-Fi system with a single SSID that widely covers the network with a smooth and seamless Wi-Fi signal.",
                      style: smallStyle,
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Features:",
                      style: smallStyle.copyWith(color: Colors.red),
                    ),
                    SizedBox(height: 8),
                    ViewProductsBulletPoints(),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 15),
                    ViewProductsAddSubstractRow(),
                    //dsfasdfsadf
                    SizedBox(height: 15),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/svg/bus.png"),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                "Get order delivery all over Nepal,or pick up available items at DishHome Store",
                                style: smallStyle,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Image.asset("assets/svg/what.png"),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Have questions about buying an item?",
                                    style: smallStyle,
                                  ),
                                  Text(
                                    "Chat with DishHomeSpecialist",
                                    style: smallStyle.copyWith(
                                        color: Color.fromRGBO(31, 156, 255, 1)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 15),
                    ViewProductsGridView(),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    SizedBox(height: 8),
                    CustomButton(
                      onTap: () {
                        Get.bottomSheet(
                          checkout_page(),
                          isDismissible: true,
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                      color: Color.fromRGBO(237, 28, 36, 1),
                      text: "Add to cart",
                      width: double.infinity,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget checkout_page() {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SvgPicture.asset("assets/svg/tick.svg"),
            SizedBox(height: 16),
            Text(
              "Product successfully added to cart",
              style: normalStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            CustomButton(
              onTap: () {
                Get.to(() => ViewProductsDetailsCheckout());
              },
              color: Color.fromRGBO(237, 28, 36, 1),
              text: "Proceed to checkout",
              width: double.infinity,
            ),
            SizedBox(height: 16),
            CustomButton(
              color: Colors.white,
              text: "Continue Shopping",
              textColor: Colors.red,
              borderColor: Colors.red,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
