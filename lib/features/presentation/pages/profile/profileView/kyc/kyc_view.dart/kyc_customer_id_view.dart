import 'package:flutter/material.dart';

import '../../../../../../../utils/theme.dart';

class KYCCustomerIDView extends StatelessWidget {
  final String? cid; 
  const KYCCustomerIDView({super.key, this.cid});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              "Customer id: ",
              style:
                  normalStyle.copyWith(color: Color.fromRGBO(102, 112, 133, 1)),
            ),
            Text(
              cid?? "12345",
              style: normalStyle.copyWith(),
            )
          ],
        ),
      ),
    );
  }
}
