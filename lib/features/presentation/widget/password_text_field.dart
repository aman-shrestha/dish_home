import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_dimension.dart';

// ignore: must_be_immutable
class PassWordTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  final IconData? pasIcon;
  bool isObscure;
  final VoidCallback? onTap;
  final int? maxLength;
  late String? Function(String?)? validator;

  PassWordTextField(
      {Key? key,
      this.isObscure = false,
      required this.icon,
      required this.textController,
      required this.hintText,
      this.pasIcon,
      this.validator,
      this.onTap,
      this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 55,
    //   width: double.infinity,
    //   // margin:
    //   //     EdgeInsets.only(left: Dimension.height10, right: Dimension.height10),
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(Dimension.radius15),
    //       color: Colors.white,
    //       boxShadow: [
    //         BoxShadow(
    //           blurRadius: 3,
    //           spreadRadius: 1,
    //           offset: const Offset(1, 1),
    //           color: Colors.grey.withOpacity(0.2),
    //         )
    //       ]),
    //   child:
    return Column(
      children: [
        TextFormField(
            obscureText: isObscure ? true : false,
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: Dimension.font16,
                  color: AppColors.grey.withOpacity(0.6)),
              prefixIcon: Icon(
                icon,
                color: AppColors.backGroundColor,
              ),
              suffixIcon: GestureDetector(
                onTap: onTap,
                child: Icon(
                  pasIcon,
                  color: AppColors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                borderSide: const BorderSide(width: 1, color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                borderSide: const BorderSide(width: 1, color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                borderSide: const BorderSide(width: 1, color: Colors.grey),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
            ),
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction),
      ],
    );
    // );
  }
}
