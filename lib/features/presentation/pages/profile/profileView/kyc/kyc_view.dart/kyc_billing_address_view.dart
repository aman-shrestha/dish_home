import 'package:flutter/material.dart';

import '../../../../../../../utils/theme.dart';

class KYCBillingAddressView extends StatelessWidget {
  final String ? billName;
  final String ? billProvince;
  final String ? billDistrict;
  final String ? billMunicipality;
  final String ? billStreet;
  final String ? billAddress;
  const KYCBillingAddressView({super.key, this.billName,this.billDistrict, this.billProvince, this.billMunicipality, this.billStreet, this.billAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromRGBO(242, 244, 247, 1)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Billing Address",
              style:
                  normalStyle.copyWith(color: Color.fromRGBO(102, 112, 133, 1)),
            ),
            SizedBox(height: 20),
            Text(
              "Name",
              style:
                  normalStyle.copyWith(color: Color.fromRGBO(102, 112, 133, 1)),
            ),
            Text(
              billName??"Basant",
              style: normalStyle.copyWith(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Province",
                      style: normalStyle.copyWith(
                          color: Color.fromRGBO(102, 112, 133, 1)),
                    ),
                    Text(
                      billProvince??"Province 1",
                      style: normalStyle.copyWith(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "District",
                      style: normalStyle.copyWith(
                          color: Color.fromRGBO(102, 112, 133, 1)),
                    ),
                    Text(
                      billDistrict??"Morang" ,
                      style: normalStyle.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Municipality",
                      style: normalStyle.copyWith(
                          color: Color.fromRGBO(102, 112, 133, 1)),
                    ),
                    Text(
                      billMunicipality??"demoname 1",
                      style: normalStyle.copyWith(),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Street",
                      style: normalStyle.copyWith(
                          color: Color.fromRGBO(102, 112, 133, 1)),
                    ),
                    Text(
                      billStreet??"demoname 1",
                      style: normalStyle.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Address",
              style:
                  normalStyle.copyWith(color: Color.fromRGBO(102, 112, 133, 1)),
            ),
            Text(
             billAddress ?? "demoname 1",
              style: normalStyle.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
