import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/theme.dart';

class SafeNetContainer extends StatelessWidget {
  const SafeNetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromRGBO(242, 244, 247, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Safenet for Children",
                  style: normalStyle,
                ),
                SizedBox(height: 4),
                Text(
                  "Only for Kids",
                  style: smallStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          SvgPicture.asset("assets/menu/safe_net.svg")
        ],
      ),
    );
  }
}
