import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text("Edit", style: TextStyle(color: Colors.white, fontSize: 12)),
    );
  }
}