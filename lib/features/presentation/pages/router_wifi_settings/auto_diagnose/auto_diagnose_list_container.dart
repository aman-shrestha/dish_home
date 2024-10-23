import 'package:flutter/material.dart';

import '../../../../../utils/theme.dart';

class AutoDiagnoseListContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  const AutoDiagnoseListContainer(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(242, 244, 247, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: smallStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
