import 'package:flutter/material.dart';

class CheckboxCircular extends StatefulWidget {
  const CheckboxCircular({super.key});

  @override
  State<CheckboxCircular> createState() => _CheckboxCircularState();
}

class _CheckboxCircularState extends State<CheckboxCircular> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.blueAccent,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      shape: CircleBorder(),
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
