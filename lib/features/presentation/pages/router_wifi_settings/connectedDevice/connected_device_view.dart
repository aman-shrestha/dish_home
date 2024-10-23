import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/connectedDevice/connected_device_container.dart';
import 'package:dish_home/features/presentation/pages/router_wifi_settings/connectedDevice/ethernet_container.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ConnectedDeviceView extends StatelessWidget {
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
  List deviceethernet = [
    "Samsung A30",
    "Samsung A30",
  ];
  List ipethernet = [
    "192.168.18.4",
    "192.168.18.4",
  ];
  List macethernet = [
    "d2.99.04",
    "d2.99.04",
  ];
  ConnectedDeviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Connected Device"),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "List of Connected Devices",
                      style: smallStyle.copyWith(
                        color: Color.fromRGBO(52, 64, 84, 1),
                      ),
                    ),
                    SvgPicture.asset("assets/svg/deviceFilterCircular.svg"),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(242, 244, 247, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wi-Fi:2 Devices Connected",
                          style: normalStyle,
                        ),
                        SizedBox(height: 16),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: device.length,
                            itemBuilder: (BuildContext context, int index) =>
                                ConnectedDeviceContainer(
                                    color: Color.fromRGBO(249, 250, 251, 1),
                                    device: device[index],
                                    signal: signal[index],
                                    ip: ip[index],
                                    mac: mac[index],
                                    ghz: ghz[index]))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(242, 244, 247, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ethernet",
                          style: normalStyle,
                        ),
                        SizedBox(height: 16),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: deviceethernet.length,
                            itemBuilder: (BuildContext context, int index) =>
                                EthernetContainer(
                                    device: deviceethernet[index],
                                    ip: ipethernet[index],
                                    mac: macethernet[index]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
