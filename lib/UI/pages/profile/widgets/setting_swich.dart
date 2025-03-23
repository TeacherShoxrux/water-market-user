import 'package:flutter/material.dart';

class SettingSwitch extends StatefulWidget {
  final String title;
  SettingSwitch({required this.title});

  @override
  _SettingSwitchState createState() => _SettingSwitchState();
}

class _SettingSwitchState extends State<SettingSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title, style: TextStyle(fontSize: 14)),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() => isSwitched = value);
          },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}