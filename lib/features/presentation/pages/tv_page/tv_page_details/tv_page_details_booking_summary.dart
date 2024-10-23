import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';

class TvPageDetailsBookingSummary extends StatelessWidget {
  const TvPageDetailsBookingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Booking Summary",
              style: normalStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1)),
                ),
                Text(
                  "Rs.225",
                  style: smallStyle.copyWith(color: Colors.green),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Time",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1)),
                ),
                Text(
                  "06:30 PM",
                  style: smallStyle,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Movie Channel",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1)),
                ),
                Text(
                  "Cinemaghar888",
                  style: smallStyle,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking Starts",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1)),
                ),
                Text(
                  "12/06/2023 06:30 PM",
                  style: smallStyle,
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking Expires",
                  style: smallStyle.copyWith(
                      color: Color.fromRGBO(71, 84, 103, 1)),
                ),
                Text(
                  "12/06/2023 06:30 PM",
                  style: smallStyle,
                )
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
