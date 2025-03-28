import 'package:flutter/material.dart';

class Lastorder extends StatelessWidget {
  final String title;
  final List<Map<String, String>> products; // Accept a list of product data
  final Function(Map<String, String>) onAddToCart;

  Lastorder({required this.title, required this.products, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.orange),
                onPressed: () {
                  // Add your onPressed code here
                },
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: products.map((product) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    // Product Image
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(product['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Add to Cart Button
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: IconButton(
                        icon: Icon(
                          Icons.add_box,
                          size: 30,
                        ),
                        onPressed: () {
                          // Add your "Add to Cart" logic here
                        },
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
