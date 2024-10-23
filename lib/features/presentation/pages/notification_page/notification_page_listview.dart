import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_dimension.dart';
import '../../../../utils/theme.dart';
import '../../widget/small_text.dart';

class NotificationPageListView extends StatelessWidget {
  const NotificationPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (ctx, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: Dimension.height5),
          padding: EdgeInsets.symmetric(
              horizontal: Dimension.height5, vertical: Dimension.height5),
          // height: Dimension.height10 * 12,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.cardYellowShade,
            borderRadius: BorderRadius.circular(Dimension.radius10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.height10,
                    vertical: Dimension.height10),
                decoration: BoxDecoration(
                  color: AppColors.redDeem,
                  borderRadius: BorderRadius.circular(Dimension.radius50 * 2),
                ),
                child: const Icon(
                  Icons.key,
                  color: AppColors.pureWhite,
                ),
              ),
              SizedBox(width: Dimension.height10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DishHome online servive password changed DishHome online servive password changed",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: normalStyle,
                    ),
                    SizedBox(height: Dimension.height10),
                    Text(
                      "The password for your account has been changed. You may enter new password next.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: smallStyle.copyWith(
                          color: Color.fromRGBO(102, 112, 133, 1)),
                    ),
                    SizedBox(height: Dimension.height10),
                    SmallTxt(
                      text: "2 days ago",
                      size: 12,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
