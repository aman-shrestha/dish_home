import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/custom_text_field.dart';

class AvailabilityView extends StatelessWidget {
  final emailContr = TextEditingController();
  AvailabilityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Availability"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              color: Colors.amber,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DishHome Fibernet Coverage",
                          style: mediumStyle,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Wondering if DH Fibernet has reached your location? View the coverage areas of the Dishhome Fibernet",
                          style: smallStyle.copyWith(
                              color: Color.fromRGBO(71, 84, 103, 1)),
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          hintText: 'Search for Coverage area',
                          icon: Icons.search,
                          isObscure: false,
                          textController: emailContr,
                        ),
                        SizedBox(height: 16),
                        Image.asset("assets/svg/nepal.png"),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/signal.svg"),
                            SizedBox(width: 12),
                            Text(
                              "Dang Gulariya",
                              style: smallStyle.copyWith(
                                  color: Color.fromRGBO(52, 64, 84, 1)),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/signal.svg"),
                            SizedBox(width: 12),
                            Text(
                              "Dang Gulariya",
                              style: smallStyle.copyWith(
                                  color: Color.fromRGBO(52, 64, 84, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
