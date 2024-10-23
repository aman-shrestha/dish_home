import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page_details/tv_page_details_checkout/tv_page_details_checkout_selectPaymentMethod.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/theme.dart';
import '../../../../widget/custom_text_field.dart';
import '../../../../widget/text_field.dart';

List<String> channelList = <String>["Nepali", "Madrasi", "Animal planet"];

class TvPageDetailsCheckout extends StatefulWidget {
  TvPageDetailsCheckout({super.key});

  @override
  State<TvPageDetailsCheckout> createState() => _TvPageDetailsCheckoutState();
}

class _TvPageDetailsCheckoutState extends State<TvPageDetailsCheckout> {
  final customerID = TextEditingController();
  String dropdownValue = channelList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Checkout"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/img/slider.png",
                      height: 148,
                      width: 110,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chakka Panja 4",
                          style:
                              normalStyle.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "(2023)",
                          style: smallStyle.copyWith(
                              color: Color.fromRGBO(102, 112, 133, 1)),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "Show time: ",
                              style: smallStyle,
                            ),
                            Text(
                              "01:15 AM",
                              style: smallStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Air at: ",
                              style: smallStyle,
                            ),
                            Text(
                              "01:15 AM",
                              style: smallStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Total amount: ",
                              style: normalStyle,
                            ),
                            Text(
                              "Rs.325",
                              style: normalStyle.copyWith(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Customer ID",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                MyTextField(hintText: ""),
                SizedBox(height: 16),
                Text(
                  "STB Number",
                  style: smallStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                DropdownMenu<String>(
                  width: Dimension.height350,
                  initialSelection: channelList.first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries: channelList
                      .map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
                SizedBox(height: 24),
                TvPageDetailsCheckoutSelectPaymentMethod(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
