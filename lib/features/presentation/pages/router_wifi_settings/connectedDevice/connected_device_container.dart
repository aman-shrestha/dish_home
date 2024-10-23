import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/theme.dart';

class ConnectedDeviceContainer extends StatelessWidget {
  final String device;
  final String signal;
  final String ip;
  final String mac;
  final String ghz;
  final Color? color;
  const ConnectedDeviceContainer(
      {super.key,
      required this.device,
      required this.signal,
      required this.ip,
      required this.mac,
      required this.ghz,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/svg/wifiSettings.svg"),
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
                        "Signal Strength: ",
                        style: smallStyle.copyWith(
                          color: Color.fromRGBO(52, 64, 84, 1),
                        ),
                      ),
                      Text(signal, style: smallStyle),
                    ],
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
                  Row(
                    children: [
                      Text(
                        "Signal Strength: ",
                        style: smallStyle.copyWith(
                          color: Color.fromRGBO(52, 64, 84, 1),
                        ),
                      ),
                      Text(signal, style: smallStyle),
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
