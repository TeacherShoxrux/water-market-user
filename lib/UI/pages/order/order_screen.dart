import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_market_user/UI/pages/order/widgets/order_cart.dart';
import 'package:water_market_user/UI/pages/order/widgets/tap_button.dart';


class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isActiveTab = true;

  final List<Map<String, dynamic>> activeOrders = [
    {
      "orderId": "12345",
      "total": 25.00,
      "date": "12 Oct 2023, 2:30 PM",
      "status": "Delivered",
      "statusColor": Colors.green,
      "products": ["https://picsum.photos/53/50", "https://picsum.photos/51/50"]
    },
    {
      "orderId": "12346",
      "total": 15.00,
      "date": "13 Oct 2023, 10:00 AM",
      "status": "In Progress",
      "statusColor": Colors.orange,
      "products": ["https://picsum.photos/56/50", "https://picsum.photos/46/50"]
    },
  ];

  final List<Map<String, dynamic>> completedOrders = [
    {
      "orderId": "12347",
      "total": 30.00,
      "date": "14 Oct 2023, 1:00 PM",
      "status": "Canceled",
      "statusColor": Colors.red,
      "products":  ["https://picsum.photos/56/50", "https://picsum.photos/46/50"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = isActiveTab ? activeOrders : completedOrders;

    return Scaffold(
      appBar: AppBar(
        title: Text("Order History", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabButton(
                  text: "Active",
                  isSelected: isActiveTab,
                  onTap: () => setState(() => isActiveTab = true),
                ),
                SizedBox(width: 10),
                TabButton(
                  text: "Completed",
                  isSelected: !isActiveTab,
                  onTap: () => setState(() => isActiveTab = false),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return OrderCard(
                    orderId: order["orderId"],
                    total: order["total"],
                    date: order["date"],
                    status: order["status"],
                    statusColor: order["statusColor"],
                    products: order["products"],
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