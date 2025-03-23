
import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/cart/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Map<String, int> quantities = {
    "Sparkling Mineral Water": 2,
    "Distilled Water Jug": 1,
    "Natural Spring Water": 3,
  };

  double subtotal = 27.50;
  double deliveryFee = 3.00;

  void updateQuantity(String product, int change) {
    setState(() {
      quantities[product] = (quantities[product]! + change).clamp(0, 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Delivery Address
            Text("Delivery Address", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("123 Water Lane, Aqua City, H2O 4567"),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: const Text("Change", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Cart Items
            Expanded(
              child: ListView(
                children: quantities.keys.map((product) {
                  return CartItem(
                    productName: product,
                    quantity: quantities[product]!,
                    onIncrease: () => updateQuantity(product, 1),
                    onDecrease: () => updateQuantity(product, -1),
                    onRemove: () => updateQuantity(product, -quantities[product]!),
                  );
                }).toList(),
              ),
            ),
            // Subtotal, Delivery Fee, Total
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Text("Subtotal: \$27.50", style: TextStyle(fontSize: 16)),
                Text("Delivery Fee: \$3.00", style: TextStyle(fontSize: 16)),
                Text("Total: \$30.50", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: const Text("Proceed to Checkout"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}