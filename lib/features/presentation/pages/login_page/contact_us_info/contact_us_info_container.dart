import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/theme.dart';

class ContactUsInfoContainer extends StatelessWidget {
  final String img;
  final String title;
  final String no;

  const ContactUsInfoContainer(
      {super.key, required this.img, required this.title, required this.no});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromRGBO(242, 244, 247, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SvgPicture.asset(img),
            SizedBox(height: 20),
            Text(
              title,
              style: smallStyle,
            ),
            Text(
              no,
              style: smallStyle.copyWith(color: Color.fromRGBO(131, 10, 15, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
