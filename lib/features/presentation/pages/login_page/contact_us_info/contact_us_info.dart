import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/login_page/contact_us_info/contact_us_info_container.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class ContactUsInfo extends StatelessWidget {
  final List h = [
    "assets/svg/helpDesk.svg",
    "assets/svg/helpDesk.svg",
    "assets/svg/helpDesk.svg",
    "assets/svg/helpDesk.svg",
    "assets/svg/helpDesk.svg",
  ];
  final List title = [
    "Help Dest",
    "Viber",
    "Whatsapp",
    "Email",
    "Facebook",
  ];
  final List no = [
    "01-4217666",
    "9837646743",
    "9834788374",
    "email@gmail.com",
    "facebook.com/dishhome",
  ];
  ContactUsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Contact Us"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "24*7 Customer Service",
                    style: normalStyle.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Feel free to contact us.\nWe’re at your service for 24*7.",
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(152, 162, 179, 1)),
                  ),
                ),
                SizedBox(height: 40),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: title.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ContactUsInfoContainer(
                          img: h[index], title: title[index], no: no[index]);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
