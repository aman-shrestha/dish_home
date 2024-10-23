import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/store_page/view_products/view_products_detail.dart/view_products_details_checkout/view_products_details_add%20location/view_products_details_addLocation_dropDownButton.dart';
import 'package:dish_home/features/presentation/widget/custom_textField.dart';
import 'package:dish_home/features/presentation/widget/custom_text_field.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class ViewProductsDetailsAddLocation extends StatelessWidget {
  final emailContr = TextEditingController();
  ViewProductsDetailsAddLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Location"),
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: [
          Text(
            "Save",
            style: normalStyle.copyWith(color: Colors.red),
          ),
          SizedBox(width: 20),
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
                  "Address Name",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                CustomTextField(
                    textController: emailContr, hintText: "Thapathali"),
                SizedBox(height: 16),
                Text(
                  "Province",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                ViewProductsDetailsAddLocationDropDownButton(),
                SizedBox(height: 16),
                Text(
                  "District",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                ViewProductsDetailsAddLocationDropDownButton(),
                SizedBox(height: 16),
                Text(
                  "Street",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                CustomTextField(
                    textController: emailContr, hintText: "Thapathali"),
                SizedBox(height: 16),
                Text(
                  "Address ",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                CustomTextField(
                    textController: emailContr, hintText: "Thapathali"),
                SizedBox(height: 16),
                Text(
                  "Landmark",
                  style: normalStyle,
                ),
                SizedBox(height: 8),
                CustomTextField(
                    textController: emailContr, hintText: "Thapathali"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
