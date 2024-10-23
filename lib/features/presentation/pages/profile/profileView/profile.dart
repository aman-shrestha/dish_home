import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/change_password_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/features/presentation/pages/order_page/order_page.dart';
import 'package:dish_home/features/presentation/pages/profile/document/documents_view.dart';
import 'package:dish_home/features/presentation/pages/profile/iptvppv/iptvppv.dart';
import 'package:dish_home/features/presentation/pages/profile/order/order_view.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/kyc/kyc_view.dart/kyc.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/profileListCard.dart';
import 'package:dish_home/features/presentation/pages/profile/profileView/profile_info_container.dart';
import 'package:dish_home/features/presentation/pages/profile/referrals/referrals_view.dart';
import 'package:dish_home/features/presentation/pages/profile/user_profile.dart';
import 'package:dish_home/features/presentation/pages/profile/wishlist/wishlist_view.dart';
import 'package:dish_home/features/presentation/pages/setting_page/setting_widget.dart';
import 'package:dish_home/features/presentation/widget/small_text.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../../app/home_navigation/widget/custom_app_bar.dart';
import '../../../../../utils/app_dimension.dart';

class Profile extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? profileImageUrl;

  Profile({super.key, this.name, this.email, this.phone, this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Colors.black12,
        elevation: 0,
        centerTitle: false,
        foregroundColor: Colors.black,
        title: SmallTxt(
          text: "",
          size: Dimension.font16,
          color: Colors.black,
        ),
        leading: InkWell(
            onTap: () {
              Get.offAll(HomeNavigation());
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              children: [
                ProfileInfoContainer(
                  name: name,
                  email: email,
                  phone: phone,
                  profileImage: profileImageUrl,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.to(() => KYCView());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/kyc.svg", title: "View KYC Details"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => UserProfile(
                          name: name,
                          email: email,
                          phone: phone,
                          profileImage: profileImageUrl,
                        ));
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/editProfile.svg",
                      title: "Edit Account"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => IPTVPPV());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/iptv.svg", title: "IPTV PPV"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => OrderView());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/myOrder.svg", title: "My Orders"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => WishListView());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/myWishlist.svg", title: "My Wishlist"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ReferralsView());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/myReferrals.svg",
                      title: "My Referrals"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => OrderPage());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/billingHistory.svg",
                      title: "Billing History"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => DocumentsView());
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/documents.svg", title: "My Documents"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ChangePassword(
                          resetToken: "",
                        ));
                  },
                  child: ProfileListCard(
                      icon: "assets/svg/security.svg", title: "Security"),
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      switch_profile(),
                      isDismissible: true,
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                  child: const ProfileListCard(
                    icon: "assets/svg/switchProfile.svg",
                    title: "Switch Profile",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => LoginPage());
                  },
                  child: const ProfileListCard(
                    icon: "assets/svg/logout.svg",
                    title: "Logout",
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget switch_profile() {
    return Container(
      color: Colors.white,
      height: 300,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Switch Profile",
                style: mediumStyle,
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: Dimension.radius25,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                      "assets/icons/ppl.png",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Ram Sriwastav",
                    style: normalStyle,
                  ),
                ],
              ),
              Divider(
                color: Colors.black.withOpacity(0.2),
              ),
              //
              Row(
                children: [
                  // CircleAvatar(
                  //   radius: Dimension.radius25,
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: const AssetImae(
                  //     "assets/svg/logout.svg",
                  //   ),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/svg/logout.svg"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Log into another account",
                    style: normalStyle.copyWith(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
