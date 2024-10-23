import 'package:flutter/material.dart';
import '../../../utils/app_dimension.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  final String hintText;
  final Widget? icon;
  int? lines;
  final TextEditingController? inPutController;

  MyTextField({
    Key? key,
    required this.hintText,
    this.icon,
    this.lines,
    this.inPutController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 8.0),
        hintText: hintText,
        // hintStyle: TextStyle(fontSize: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimension.radius5),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        suffixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimension.radius5),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimension.radius5),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      controller: inPutController,
      maxLines: lines,
    );
  }
}
