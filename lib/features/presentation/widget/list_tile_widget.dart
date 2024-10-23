import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_dimension.dart';
import 'small_text.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icons;
  const ListWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10, 16, 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallTxt(
                text: title,
                size: Dimension.font20 - 2,
              ),
              SizedBox(height: 6.0),
              SmallTxt(
                text: subtitle,
                size: Dimension.font14,
                color: AppColors.grey,
              ),
            ],
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: Dimension.height25,
            width: Dimension.height25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.green,
            ),
            child: Icon(
              Icons.check,
              size: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    //   ListTile(
    //     title: SmallTxt(
    //       text: title,
    //       size: Dimension.font20 - 2,
    //     ),
    // subtitle: SmallTxt(
    //   text: subtitle,
    //   size: Dimension.font14,
    //   color: AppColors.grey,
    // ),

    //   );
    // }
  }
}
