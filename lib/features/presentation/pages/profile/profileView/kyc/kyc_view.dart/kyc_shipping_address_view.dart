import 'package:flutter/material.dart';

import '../../../../../../../utils/theme.dart';

class KYCShippingAddress extends StatelessWidget {
  final String? sName;
  final String? sProvince;
  final String? sDistrict;
  final String? sMunicipality;
  final String? sStreet;
  final String? sAddress;
  const KYCShippingAddress({super.key, this.sName, this.sProvince, this.sDistrict, this.sMunicipality, this.sStreet, this.sAddress});

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
              "Shipping Address",
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
              sName??"Adarsha Lamichhane",
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
                      sProvince??"Province 1",
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
                     sDistrict?? "Bhojpur",
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
                      sMunicipality??"demoname 1",
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
                      sStreet??"demoname 1",
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
              sAddress??"demoname 1",
              style: normalStyle.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
