import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/theme.dart';

class RouterStatusContainer extends StatelessWidget {
  const RouterStatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/svg/online.svg"),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "STATUS",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        Text(
                          "Active",
                          style: smallStyle,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "LAST ONLINE",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        Text(
                          "2023-01-04 (11:20 AM)",
                          style: normalStyle,
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/network.svg"),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OPTICAL SIGNAL LEVEL",
                          style: smallStyle.copyWith(
                            color: Color.fromRGBO(152, 162, 179, 1),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "+29 DBM",
                              style: normalStyle.copyWith(color: Colors.green),
                            ),
                            Text(
                              " or ",
                              style: normalStyle,
                            ),
                            Text(
                              "-29.30 DBM",
                              style: normalStyle.copyWith(color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/error.svg"),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "Your optical power level is less than threshold. Please rise a ticket.",
                        style: smallStyle.copyWith(color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
