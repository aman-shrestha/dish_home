import 'package:dish_home/app/home_navigation/widget/fixed_app_bar.dart';
import 'package:dish_home/features/presentation/widget/custom_button.dart';
import 'package:dish_home/features/presentation/widget/text_field.dart';
import 'package:dish_home/utils/app_colors.dart';
import 'package:dish_home/utils/app_dimension.dart';
import 'package:dish_home/utils/string_icon_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widget/custom_row.dart';
import '../../widget/small_text.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  String dropdownValue = channelList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(64),
            child: MyAppBar(),
          ),
          body: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height15,
                vertical: Dimension.height10,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimension.height30),
                    SmallTxt(
                      text: "Full name",
                      size: Dimension.font18,
                    ),
                    SizedBox(height: Dimension.height20),
                    MyTextField(
                      hintText: "Simran Rana",
                    ),
                    SizedBox(height: Dimension.height20),
                    SmallTxt(
                      text: "Customer ID",
                      size: Dimension.font18,
                    ),
                    SizedBox(height: Dimension.height10),
                    MyTextField(
                      hintText: "Simran Rana",
                    ),
                    SizedBox(height: Dimension.height20),
                    SmallTxt(
                      text: "Nature of Inquiry",
                      size: Dimension.font18,
                    ),
                    SizedBox(height: Dimension.height10),
                    Container(
                      height: 50,
                      child: DropdownMenu<String>(
                        width: Adaptive.w(93),
                        // expandedInsets: EdgeInsets.zero,

                        // width: Dimension.height10 * 37,

                        // width: double.infinity,
                        initialSelection: channelList.first,
                        onSelected: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        dropdownMenuEntries: channelList
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: Dimension.height20),
                    SmallTxt(
                      text: "Issue Topic",
                      size: Dimension.font18,
                    ),
                    SizedBox(height: Dimension.height10),
                    Container(
                      height: 50,
                      child: DropdownMenu<String>(
                        width: Adaptive.w(93),
                        // expandedInsets: EdgeInsets.zero,
                        initialSelection: channelList.first,
                        onSelected: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        dropdownMenuEntries: channelList
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: Dimension.height10),
                    SizedBox(height: 10),
                    SmallTxt(
                      text: "Description",
                      size: Dimension.font18,
                    ),
                    SizedBox(height: Dimension.height10),
                    MyTextField(
                      lines: 6,
                      hintText: "Describe your problems",
                    ),
                    SizedBox(height: Dimension.height30),
                    CustomButton(
                        color: AppColors.redColor,
                        text: "Request for Support",
                        width: double.infinity,
                        onTap: () {}),
                    SizedBox(height: Dimension.height30),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimension.height10,
                        vertical: Dimension.height10,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius10),
                        color: AppColors.buttonColors,
                        // border: Border.all(
                        //   color: AppColors.grey,
                        // ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallTxt(
                            text: "Contact",
                            size: Dimension.font18,
                            color: AppColors.darkNAVY,
                          ),
                          SizedBox(height: Dimension.height15),
                          const CustomRowWithIcons(
                            icons: Icons.support_agent_sharp,
                            text1: "Help Desk:",
                            text2: "01-4217666",
                            color: Color.fromRGBO(131, 10, 15, 1),
                          ),
                          SizedBox(height: Dimension.height15),
                          const CustomRowWithIcons(
                            icons: Icons.message_outlined,
                            text1: "Viber:",
                            text2: "9819868628",
                            color: Color.fromRGBO(131, 10, 15, 1),
                          ),
                          SizedBox(height: Dimension.height15),
                          const CustomRowWithIcons(
                            icons: Icons.message_outlined,
                            text1: "WhatsApp:",
                            text2: "9819868628",
                            color: Color.fromRGBO(131, 10, 15, 1),
                          ),
                          SizedBox(height: Dimension.height15),
                          const CustomRowWithIcons(
                            icons: Icons.email_outlined,
                            text1: "Email:",
                            text2:
                                "support@dishhome.com.np\n helpdesk@dishhome.com.np",
                            color: Color.fromRGBO(131, 10, 15, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimension.height20),
                    Center(
                      child: SmallTxt(
                        text: "Chat with Us",
                        color: AppColors.darkNAVY,
                        size: Dimension.font26,
                      ),
                    ),
                    SizedBox(height: Dimension.height10),
                    SmallTxt(
                      text: supportText,
                      color: AppColors.grey,
                      size: Dimension.font12,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> channelList = <String>["Internet ", "Router", "Wifi plan"];
