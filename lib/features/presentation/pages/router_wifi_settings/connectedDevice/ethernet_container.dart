import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/theme.dart';

class EthernetContainer extends StatelessWidget {
  final String device;

  final String ip;
  final String mac;

  const EthernetContainer({
    super.key,
    required this.device,
    required this.ip,
    required this.mac,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(249, 250, 251, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/svg/ethernet.svg"),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    device,
                    style: smallStyle.copyWith(
                      color: Color.fromRGBO(52, 64, 84, 1),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "IP Address: ",
                        style: smallStyle.copyWith(
                          color: Color.fromRGBO(52, 64, 84, 1),
                        ),
                      ),
                      Text(ip, style: smallStyle),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Mac Address: ",
                        style: smallStyle.copyWith(
                          color: Color.fromRGBO(52, 64, 84, 1),
                        ),
                      ),
                      Text(mac, style: smallStyle),
                    ],
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
