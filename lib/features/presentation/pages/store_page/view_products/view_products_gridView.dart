import 'package:flutter/material.dart';

import '../../../../../utils/theme.dart';

class ViewProductsGridView extends StatelessWidget {
  final List img = [
    "assets/img/img.png",
    "assets/img/img.png",
    "assets/img/img.png",
    "assets/img/img.png",
  ];
  final List title = [
    "DH play DH playDH play",
    "Router",
    "DH play",
    "Router",
  ];
  final List subtitle = [
    "4K Quality, 4K Streamer",
    "Single, Dual or WiFi 6 Router Single, Dual or WiFi 6 Router",
    "4K Quality, 4K Streamer",
    "Single, Dual or WiFi 6 Router",
  ];
  final List price = [
    "Rs. 4,500",
    "Rs. 4,500",
    "Rs. 4,500",
    "Rs. 4,500",
  ];
  ViewProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: title.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  child: Image.asset(
                    img[index],
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  title[index],
                  overflow: TextOverflow.ellipsis,
                  style: normalStyle.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  subtitle[index],
                  overflow: TextOverflow.ellipsis,
                  style:
                      smallStyle.copyWith(color: Color.fromRGBO(52, 64, 84, 1)),
                ),
                SizedBox(height: 8),
                Text(
                  price[index],
                  overflow: TextOverflow.ellipsis,
                  style: normalStyle.copyWith(
                      color: Colors.green, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        });
  }
}
