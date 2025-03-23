import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/markets/widgets/filter.dart';
import 'package:water_market_user/UI/pages/markets/widgets/store_cart.dart';

import '../home/widget/store_card.dart';

class MarketsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> stores = [
    {
      "name": "Aqua Pure Store",
      "address": "123 Waterway Dr, Springfield",
      "rating": 4.8,
      "image": "https://picsum.photos/50/50"
    },
    {
      "name": "Crystal Clear Water",
      "address": "456 Crystal St, River City",
      "rating": 4.6,
      "image": "https://picsum.photos/50/50"
    },
    {
      "name": "Ocean Fresh Supplies",
      "address": "789 Ocean Ave, Baytown",
      "rating": 4.5,
      "image": "https://picsum.photos/50/50"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store Directory", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Store by Name",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterButton(text: "Sort: Rating ↓", icon: Icons.sort),
                FilterButton(text: "Filter: Location", icon: Icons.filter_alt),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  final store = stores[index];
                  return StoreCard2(
                    name: store["name"],
                    address: store["address"],
                    rating: store["rating"],
                    imagePath: store["image"],

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}