import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/theme.dart';

class ReferralsContainer extends StatelessWidget {
  final String title;
  final String date;
  final String phoneNo;
  final String status;
  const ReferralsContainer(
      {super.key,
      required this.title,
      required this.date,
      required this.phoneNo,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(242, 244, 247, 1)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: normalStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(52, 64, 84, 1)),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/message.svg"),
                  SizedBox(width: 8),
                  Text(
                    date,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/phone.svg"),
                  SizedBox(width: 8),
                  Text(
                    phoneNo,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Status: ",
                    style: normalStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 112, 133, 1)),
                  ),
                  Text(
                    status,
                    style: normalStyle.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
