import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../../utils/theme.dart';

class KYCEditGetOTPButton extends StatelessWidget {
  final String title;
   final VoidCallback? onTap;
   bool ?isLoading ;
   
   KYCEditGetOTPButton({super.key, required this.title,this.onTap,this.isLoading});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.red)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: isLoading!
                ? Container(
                    height:12,
                    width: 12,
                    child: CircularProgressIndicator(
                      color: AppColors.redColor,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
              title,
              style: smallStyle.copyWith(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
