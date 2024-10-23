import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_dimension.dart';
import '../../../../utils/theme.dart';

class RouterCard extends StatelessWidget {
  final String icon;
  final String title;
  const RouterCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height70,
      margin: EdgeInsets.only(top: Dimension.height15),
      padding: EdgeInsets.only(
          left: Dimension.width20,
          top: Dimension.width10,
          bottom: Dimension.width10),
      decoration: BoxDecoration(
          color: const Color(0xffFCFCFD),
          borderRadius: BorderRadiusDirectional.circular(Dimension.radius15),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(0, 5),
              color: Colors.grey.withOpacity(.1),
            ),
          ],
          border: Border.all(
            color: Colors.grey.withOpacity(.2),
          )),
      child: Row(
                        children: [
                          SvgPicture.asset(icon),
                          SizedBox(width: 16),
                          Text(
                            title,
                            style: normalStyle,
                          )
                        ],
                      ),
    );
  }
}