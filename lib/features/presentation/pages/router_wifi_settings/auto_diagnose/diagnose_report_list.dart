import 'package:flutter/material.dart';

import '../../../../../utils/theme.dart';

class DiagnoseReport_list extends StatelessWidget {
  final String title;
  final String subtitle;
  const DiagnoseReport_list(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: smallStyle.copyWith(
              color: Color.fromRGBO(152, 162, 179, 1),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: smallStyle.copyWith(
              color: Color.fromRGBO(52, 64, 84, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
