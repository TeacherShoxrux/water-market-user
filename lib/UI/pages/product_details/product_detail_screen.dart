import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedSize = 5; // Default size selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Stack(
              children: [
                Image.network("https://picsum.photos/550/550", width: double.infinity, height: 250, fit: BoxFit.cover),
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title and Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Natural Spring Water",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$15.99",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Available Sizes
                  Text("Available Sizes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [5, 10, 20].map((size) {
                      return Row(
                        children: [
                          Radio(
                            value: size,
                            groupValue: selectedSize,
                            onChanged: (int? value) {
                              setState(() {
                                selectedSize = value!;
                              });
                            },
                          ),
                          Text("$size L"),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),

                  // Description
                  Text("Description", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text(
                    "Our Natural Spring Water is sourced from pristine mountain springs, "
                        "offering a refreshing taste and essential minerals. Available in various sizes "
                        "to suit your hydration needs.",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 15),

                  // Delivery Options
                  Text("Delivery Options", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.blue),
                      SizedBox(width: 5),
                      Text("Standard Delivery - Free"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.flash_on, color: Colors.blue),
                      SizedBox(width: 5),
                      Text("Express Delivery - \$5.00"),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {},
                      child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
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