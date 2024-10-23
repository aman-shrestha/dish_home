import 'package:dish_home/app/home_navigation/widget/custom_app_bar.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/small_text.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({super.key});

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  bool isExpand = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("FAQs"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height10,
          vertical: Dimension.height10,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: Dimension.height5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius10),
                      border: Border.all(color: AppColors.grey),
                    ),
                    child: ExpansionTile(
                      iconColor: AppColors.grey,
                      leading: SvgPicture.asset(expansionIcon[index]),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            // IconButton(
                            //   onPressed: () {
                            //     setState(() {
                            //       isExpand = !isExpand;
                            //       selectedIndex = index;
                            //     });
                            //   },
                            //   icon: isExpand == true &&
                            //           selectedIndex == index
                            //       ? const Icon(Icons.remove_circle_rounded)
                            //       : const Icon(Icons.add_circle_rounded),
                            // ),
                            SizedBox(width: Dimension.height5),
                            SmallTxt(
                              text: expansionTileList[index],
                              size: Dimension.font14,
                            ),
                          ],
                        ),
                      ),
                      children: List.generate(
                        4,
                            (index) => Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: Dimension.height10,
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isExpand = !isExpand;
                                    selectedIndex = index;
                                  });
                                },
                                icon: isExpand == true &&
                                    selectedIndex == index
                                    ? const Icon(Icons.remove_circle_rounded)
                                    : const Icon(Icons.add_circle_rounded),
                              ),
                              SizedBox(width: Dimension.height5),
                              Expanded(
                                child: SmallTxt(
                                  text:
                                  "Can we get multiple connections in Fibernet?",
                                  size: Dimension.font14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}