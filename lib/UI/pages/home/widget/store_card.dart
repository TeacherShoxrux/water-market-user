// Store Card
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final String description;
  final bool isTopRated;

  const StoreCard({
    Key? key,
    required this.icon,
    required this.name,
    required this.description,
    this.isTopRated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isTopRated ? Colors.yellow.shade100 : Colors.blue.shade50,
      child: ListTile(
        leading: Icon(icon, color: isTopRated ? Colors.orange : Colors.blue),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}