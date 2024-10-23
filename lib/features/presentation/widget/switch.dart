import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      child: Switch(
        // This bool value toggles the switch.
        value: light,
        activeColor: Color.fromRGBO(7, 45, 95, 1),
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            light = value;
          });
        },
      ),
    );
  }
}
