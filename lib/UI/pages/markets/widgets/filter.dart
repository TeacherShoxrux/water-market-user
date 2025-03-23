import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final IconData icon;

  FilterButton({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 16),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
    );
  }
}