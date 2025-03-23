import 'package:flutter/material.dart';

class StoreCard2 extends StatelessWidget {
  final String name;
  final String address;
  final double rating;
  final String imagePath;

  StoreCard2({required this.name, required this.address, required this.rating, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(imagePath, width: 60, height: 60, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(address, style: TextStyle(color: Colors.grey)),
                  Text("Rating: $rating", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.blue),
              onPressed: () {},
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            //   child: Text("View Store", style: TextStyle(color: Colors.white)),
            // ),
          ],
        ),
      ),
    );
  }
}
