import 'package:flutter/material.dart';

import '../connectedDevice/connected_device_container.dart';

class DeviceFiltersBlacklistTabView extends StatelessWidget {
  List device = [
    "Samsung A30",
    "Samsung A30",
  ];
  List signal = [
    "Good (-65)",
    "Good (-65)",
  ];
  List ip = [
    "192.168.18.4",
    "192.168.18.4",
  ];
  List mac = [
    "d2.99.04",
    "d2.99.04",
  ];
  List ghz = [
    "6@2.4 Ghz",
    "6@2.4 Ghz",
  ];
  DeviceFiltersBlacklistTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: device.length,
                itemBuilder: (BuildContext context, int index) =>
                    ConnectedDeviceContainer(
                        color: Color.fromRGBO(253, 229, 230, 1),
                        device: device[index],
                        signal: signal[index],
                        ip: ip[index],
                        mac: mac[index],
                        ghz: ghz[index]))
          ],
        ),
      ),
    );
  }
}
