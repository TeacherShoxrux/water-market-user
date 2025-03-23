import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  final List<Map<String, String>> banners = [
    {
      "image": "https://picsum.photos/500/500",
      "title": "Fresh Water Deals!",
      "subtitle": "Save 20% on your first order",
    },
    {
      "image": "https://picsum.photos/500/500",
      "title": "Premium Bottled Water",
      "subtitle": "Now available at a discount",
    },
    {
      "image": "https://picsum.photos/500/500",
      "title": "Get Clean & Safe Water",
      "subtitle": "Order now and get free delivery",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // Banner balandligi
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // GORIZONTAL scroll
        itemCount: banners.length,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final banner = banners[index];

          return Container(
            width: 300, // Har bir banner kengligi
            margin: EdgeInsets.only(right: 12), // Banner orasidagi bo‘sh joy
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(banner["image"]!), // Rasm yuklash
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    banner["title"]!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    banner["subtitle"]!,
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      print("${banner["title"]} banneri bosildi!");
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("Shop Now"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
