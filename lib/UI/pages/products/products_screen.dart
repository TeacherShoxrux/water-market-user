
import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/products/widgets/product_item.dart';

import '../product_details/product_detail_screen.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Water Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterChip(label: const Text('Sort: Price ↑'), onSelected: (val) {}),
                FilterChip(label: const Text('Filter: Volume'), onSelected: (val) {}),
                FilterChip(label: const Text('Filter: Brand'), onSelected: (val) {}),

              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children:  [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductDetailsScreen()));
                    },
                    child: ProductItem(
                      imageUrl: 'https://picsum.photos/50/50',
                      title: 'Spring Water',
                      volume: '1L',
                      price: '\$1.50',
                    ),
                  ),
                  ProductItem(
                    imageUrl: 'https://picsum.photos/50/50',
                    title: 'Distilled Water',
                    volume: '5L',
                    price: '\$3.75',
                  ),
                  ProductItem(
                    imageUrl: 'https://picsum.photos/50/50',
                    title: 'Purified Water',
                    volume: '19L',
                    price: '\$10.00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
