import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_edit/kyc_edit_view.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc_billing_address_view.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc_customer_id_view.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc_shipping_address_view.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/profile.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../app/home_navigation/widget/custom_app_bar.dart';

class KYCView extends StatelessWidget {
  final String? billAddress;
  final String? billName;
  final String? billDistrict;
  final String? billMunicipality;
  final String? billProvince;
  final String? billStreet;
  final String? shAddress;
  final String? shiName;
  final String? shiDistrict;
  final String? shiMunicipality;
  final String? shiProvince;
  final String? shiStreet;
  final String? cid;
  const KYCView(
      {super.key,
      this.billAddress,
      this.billName,
      this.billDistrict,
      this.billMunicipality,
      this.billProvince,
      this.billStreet,
      this.shAddress,
      this.shiName,
      this.shiDistrict,
      this.shiMunicipality,
      this.shiProvince,
      this.shiStreet,
      this.cid});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KYC Details"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: false,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => KYCEditView());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 15),
              child: Text(
                "Edit",
                style: normalStyle.copyWith(color: Colors.red),
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KYCCustomerIDView(
                  cid: cid,
                ),
                SizedBox(height: 20),
                KYCBillingAddressView(
                  billAddress: billAddress,
                  billName: billName,
                  billDistrict: billDistrict,
                  billMunicipality: billMunicipality,
                  billProvince: billProvince,
                  billStreet: billStreet,
                ),
                SizedBox(height: 20),
                KYCShippingAddress(
                  sAddress: shAddress,
                  sDistrict: shiDistrict,
                  sName: shiName,
                  sProvince: shiProvince,
                  sMunicipality: shiMunicipality,
                  sStreet: shiStreet,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
