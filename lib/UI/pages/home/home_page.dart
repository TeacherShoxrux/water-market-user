import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/home/widget/banner.dart';
import 'package:water_market_user/UI/pages/home/widget/product_card.dart';
import 'package:water_market_user/UI/pages/products/products_screen.dart';
import '../markets/markets_screen.dart';
import '../product_details/product_detail_screen.dart';
import 'widget/category_chip.dart';
import 'widget/store_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.blue),
            const SizedBox(width: 8),
            const Text(
              "HydroHub",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search for stores or products",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 15),

            BannerCarousel(),
            const SizedBox(height: 20),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryChip(label: "Bottled Water"),
                CategoryChip(label: "Sparkling Water"),
                CategoryChip(label: "Flavored Water"),
              ],
            ),

            const SizedBox(height: 20),

            // Featured Products
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductsScreen()));
                },child:  const SectionTitle(title: "Featured Products")),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductDetailsScreen()));
                      },
                      child: ProductCard(image: "https://picsum.photos/50/50", name: "Spring Water", price: "\$2.99")),
                  ProductCard(image: "https://picsum.photos/50/50", name: "Spring Water", price: "\$2.99"),
                  ProductCard(image: "https://picsum.photos/50/50", name: "Sparkling Water", price: "\$3.49"),
                  ProductCard(image: "https://picsum.photos/50/50", name: "Sparkling Water", price: "\$3.49"),
                  ProductCard(image: "https://picsum.photos/50/50", name: "Sparkling Water", price: "\$3.49"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Available Stores
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>MarketsScreen()));
                },
                child: const SectionTitle(title: "Available Stores")),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductsScreen()));
              },child:StoreCard(
                icon: Icons.local_drink,
                name: "AquaPure",
                description: "Natural water delivery service",
              ),
            ),
            StoreCard(
              icon: Icons.eco,
              name: "FreshFlow",
              description: "Natural spring water",
            ),
            StoreCard(
              icon: Icons.delivery_dining,
              name: "H2O Express",
              description: "Fast and reliable delivery",
            ),
            const SizedBox(height: 20),

            // Top Rated Stores
            const SectionTitle(title: "Top Rated"),
            StoreCard(
              icon: Icons.star,
              name: "WaterWell",
              description: "Rated 4.8/5 by customers",
              isTopRated: true,
            ),
            StoreCard(
              icon: Icons.star,
              name: "CrystalClear",
              description: "Rated 4.7/5 by customers",
              isTopRated: true,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}