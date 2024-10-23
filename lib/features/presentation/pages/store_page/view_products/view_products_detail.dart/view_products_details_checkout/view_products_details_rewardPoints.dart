import 'package:dish_home/features/presentation/widget/switch.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewProductsDetailsRewardPoints extends StatelessWidget {
  const ViewProductsDetailsRewardPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset("assets/svg/rewards.svg"),
            SizedBox(width: 16),
            Text(
              "Use Reward Points",
              style: normalStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            Spacer(),
            SwitchButton(),
            
          ],
        ),
      ),
    );
  }
}
