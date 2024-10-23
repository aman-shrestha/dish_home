import 'package:dish_home/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_dimension.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final double size;
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  final TextInputType? inputType;
  late String? Function(String?)? validator;

  AppTextField(
      {Key? key,
      this.isObscure = false,
      required this.icon,
      required this.textController,
      required this.hintText,
      this.inputType,
      this.validator,
      this.size = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   width: size,
        //   height: 55,
          // margin:
          //     EdgeInsets.only(left: Dimension.height10, right: Dimension.height10),
          // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(Dimension.radius15),
        //   color: Colors.white,
        //   boxShadow: [
        //     BoxShadow(
        //       blurRadius: 3,
        //       spreadRadius: 1,
        //       offset: const Offset(1, 1),
        //       color: Colors.grey.withOpacity(0.2),
        //     )
        //   ],
        // ),
        //   child:
        TextFormField(
            obscureText: isObscure ? true : false,
            controller: textController,

            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: Dimension.font16,
                  color: AppColors.grey.withOpacity(0.6)),
              prefixIcon: Icon(
                icon,
                color: AppColors.backGroundColor,
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        // ),

      ],
    );
  }
}
