import 'package:dish_home/api/api_constant.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_dimension.dart';
import '../../../../../utils/theme.dart';

class ProfileInfoContainer extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? profileImage;
  const ProfileInfoContainer(
      {super.key, this.name, this.email, this.phone, this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(237, 28, 36, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            (profileImage == null || profileImage == "")
                ? CircleAvatar(
                    radius: Dimension.radius25,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                      "assets/icons/ppl.png",
                    ),
                  )
                : Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              imageBaseUrl + profileImage!,
                            ),
                            fit: BoxFit.cover)),
                  ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? "Ram Sriwastav",
                  style: smallStyle.copyWith(color: Colors.white),
                ),
                SizedBox(height: 6),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                    child: Row(
                      children: [
                        Text(
                          "Balance:",
                          style: smallStyle.copyWith(color: Colors.black),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "27,723",
                          style: smallStyle.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      email ?? "ram.sriwastav@gmail.com",
                      style: smallStyle.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      phone ?? "9855734637",
                      style: smallStyle.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
