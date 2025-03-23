import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final double total;
  final String date;
  final String status;
  final Color statusColor;
  final List<String> products;

  OrderCard({required this.orderId, required this.total, required this.date, required this.status, required this.statusColor, required this.products});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Order ID: $orderId", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Total: \$${total.toStringAsFixed(2)}", style: TextStyle(color: Colors.black)),
            Align(
              alignment: Alignment.topRight,
              child: Text(date, style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                for (var product in products)
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.network(product, width: 40, height: 40),
                  ),
                Spacer(),
                Text(status, style: TextStyle(color: statusColor, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("View Details", style: TextStyle(color: Colors.white)),
                  ),
                ),
                if (status == "In Progress") SizedBox(width: 10),
                if (status == "In Progress")
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),
                      child: Text("Track Order", style: TextStyle(color: Colors.white)),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
