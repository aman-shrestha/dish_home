import 'package:dish_home/features/presentation/widget/checkbox.dart';
import 'package:dish_home/features/presentation/widget/checkbox_circular.dart';
import 'package:dish_home/features/presentation/widget/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/theme.dart';

class WishListContainer extends StatelessWidget {
  final String subtile;
  const WishListContainer({super.key, required this.subtile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(242, 244, 247, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 25, 16, 25),
          child: Row(
            children: [
              CheckboxExample(),
              SizedBox(width: 10),
              Image.asset("assets/svg/documentsImg.png",height: 80,width: 60,),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WiFi Extender",
                    style: normalStyle,
                  ),
                  SizedBox(height: 10),
                  Text(
                    subtile,
                    style: normalStyle.copyWith(color: Colors.green),
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset("assets/svg/bin.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
