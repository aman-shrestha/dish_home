import 'package:dish_home/features/presentation/pages/profile/wishlist/wishlist_container.dart';
import 'package:dish_home/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class WishListView extends StatelessWidget {
  WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("My Wishlist "),
            Text(
              "(5 items)",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return WishListContainer(subtile: "Rs. 30 each");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
