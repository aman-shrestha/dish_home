import 'package:flutter/material.dart';

class ViewProductsBulletPoints extends StatelessWidget {
  final List features = [
    "Feature 1",
    "Feature 2",
  ];
  ViewProductsBulletPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: features.length,
        itemBuilder: (BuildContext context, int index) => Row(
              children: [
                Icon(Icons.fiber_manual_record, size: 15),
                SizedBox(width: 8),
                Text(features[index]),
              ],
            ));
  }
}
