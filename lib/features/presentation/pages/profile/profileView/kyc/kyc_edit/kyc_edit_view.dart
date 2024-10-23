import 'package:dish_home/api/result.dart';
import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_edit/kyc_edit_controller.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_edit/kyc_edit_getOTP_button.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../utils/app_colors.dart';
import '../../../../../../../utils/theme.dart';

KycEditController kycEditController = Get.find<KycEditController>();

class KYCEditView extends StatefulWidget {
  KYCEditView({super.key});

  @override
  State<KYCEditView> createState() => _KYCEditViewState();
}

class _KYCEditViewState extends State<KYCEditView> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fill Your KYC"),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () async {
                if (kycEditController.billName.text == "" ||
                    kycEditController.billProvince.text == "" ||
                    kycEditController.billDistrict.text == "" ||
                    kycEditController.billMunicipality.text == "" ||
                    kycEditController.billStreet.text == "" ||
                    kycEditController.billAddress.text == "" ||
                    kycEditController.cid == "") {
                  print("Missing Field");
                  Get.rawSnackbar(
                      message: "Missing Field",
                      backgroundColor: AppColors.redColor,
                      duration: Duration(seconds: 2),
                      animationDuration: Duration(milliseconds: 100),
                      snackPosition: SnackPosition.BOTTOM);
                } else {
                  String billName = kycEditController.billName.text;
                  String billAddress = kycEditController.billAddress.text;
                  String billMunicipality =
                      kycEditController.billMunicipality.text;
                  String billDistrict = kycEditController.billDistrict.text;
                  String billProvince = kycEditController.billProvince.text;
                  String billStreet = kycEditController.billStreet.text;
                  String billCid = kycEditController.cid.text;
                  String shipName = isCheck
                      ? kycEditController.billName.text
                      : kycEditController.shipName.text;
                  String shipAddress = isCheck
                      ? kycEditController.billAddress.text
                      : kycEditController.shipAddress.text;
                  String shipMunicipality = isCheck
                      ? kycEditController.billMunicipality.text
                      : kycEditController.shipMunicipality.text;
                  String shipDistrict = isCheck
                      ? kycEditController.billDistrict.text
                      : kycEditController.shipDistrict.text;
                  String shipProvince = isCheck
                      ? kycEditController.billProvince.text
                      : kycEditController.shipProvince.text;
                  String shipStreet = isCheck
                      ? kycEditController.billStreet.text
                      : kycEditController.shipStreet.text;

                  var data = {
                    "billing_address": billAddress,
                    "billing_district": billDistrict,
                    "billing_landmark": billMunicipality,
                    "billing_name": billName,
                    "billing_province": billProvince,
                    "billing_street": billStreet,
                    "customer_id": billCid,
                    "source": "mobile",
                    "same_as_billing": isCheck,
                    "shipping_address": shipAddress,
                    "shipping_district": shipDistrict,
                    "shipping_id": "",
                    "shipping_landmark": shipMunicipality,
                    "shipping_name": shipName,
                    "shipping_province": shipProvince,
                    "shipping_street": shipStreet,
                  };
                  print(data);
                  kycEditController.postKycBillingForm(data);
                  Get.offAll(HomeNavigation());

                  //  Get.to(KYCView(

                  //   shAddress: shipAddress,
                  //   shiDistrict: shipDistrict,
                  //   shiMunicipality: shipMunicipality,
                  //   shiName: shipName,
                  //   shiProvince: shipProvince,
                  //   shiStreet: shipStreet,
                  //   billStreet: billStreet,
                  //   cid: billCid,
                  //   billName: billName,
                  //   billAddress: billAddress,
                  //   billProvince: billProvince,
                  //   billDistrict: billDistrict,
                  //   billMunicipality: billMunicipality,
                  //  ));
                }
              },
              child: kycEditController.iskycLoading.value
                  ? Container(
                      height: 18,
                      width: 18,
                      child: CircularProgressIndicator(
                        color: AppColors.redColor,
                        strokeWidth: 3,
                      ),
                    )
                  : Text(
                      "Save",
                      style: normalStyle.copyWith(color: Colors.red),
                    ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Customer ID"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: kycEditController.cid,
                ),
                SizedBox(height: 6),
                Obx(
                  () => KYCEditGetOTPButton(
                    title: 'Get OTP',
                    isLoading: kycEditController.isLoading.value,
                    onTap: () async {
                      await kycEditController
                          .getOtpFromCid(kycEditController.cid.text);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text("Enter OTP"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: kycEditController.vOtp,
                ),
                SizedBox(height: 6),
                Obx(
                  () => KYCEditGetOTPButton(
                    title: 'Verify OTP',
                    isLoading: kycEditController.isLoading.value,
                    onTap: () async {
                      kycEditController.verifyOtpFromCid(
                          kycEditController.cid.text,
                          kycEditController.vOtp.text);
                    },
                  ),
                ),
                SizedBox(height: 20),
                //BILLING ADDRESS
                Text(
                  "Billing Address",
                  style: normalStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
                SizedBox(height: 20),
                Text("Name"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "Ram Sriwastav",
                  inPutController: kycEditController.billName,
                ),
                SizedBox(height: 6),
                Text("Province"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "Select Province",
                  inPutController: kycEditController.billProvince,
                ),
                SizedBox(height: 6),
                Text("District"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "Select District",
                  inPutController: kycEditController.billDistrict,
                ),
                SizedBox(height: 6),
                Text("Municipality"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: kycEditController.billMunicipality,
                ),
                SizedBox(height: 6),
                Text("Street"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: kycEditController.billStreet,
                ),
                SizedBox(height: 6),
                Text("Address"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: kycEditController.billAddress,
                ),
                SizedBox(height: 6),
                //SHIPPING ADDRESS
                SizedBox(height: 20),
                Text(
                  "Shipping Address",
                  style: normalStyle.copyWith(
                      color: Color.fromRGBO(102, 112, 133, 1)),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Same as Billing Address"),
                    Checkbox(
                        value: isCheck,
                        activeColor: AppColors.primary,
                        onChanged: (val) {
                          setState(() {
                            isCheck = val!;
                          });
                        }),
                  ],
                ),
                SizedBox(height: 10),
                Text("Name"),
                SizedBox(height: 6),
                MyTextField(
                    hintText: "Ram Sriwastav",
                    inPutController: isCheck
                        ? kycEditController.billName
                        : kycEditController.shipName),
                SizedBox(height: 6),
                Text("Province"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "Select Province",
                  inPutController: isCheck
                      ? kycEditController.billProvince
                      : kycEditController.shipProvince,
                ),
                SizedBox(height: 6),
                Text("District"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "Select District",
                  inPutController: isCheck
                      ? kycEditController.billDistrict
                      : kycEditController.shipDistrict,
                ),
                SizedBox(height: 6),
                Text("Municipality"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: isCheck
                      ? kycEditController.billMunicipality
                      : kycEditController.shipMunicipality,
                ),
                SizedBox(height: 6),
                Text("Street"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: isCheck
                      ? kycEditController.billStreet
                      : kycEditController.shipStreet,
                ),
                SizedBox(height: 6),
                Text("Address"),
                SizedBox(height: 6),
                MyTextField(
                  hintText: "",
                  inPutController: isCheck
                      ? kycEditController.billAddress
                      : kycEditController.shipAddress,
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
