import 'package:flutter/material.dart';

class RecommendedProduct extends StatelessWidget {
  final String title;
  final List<Widget> items;

  RecommendedProduct({required this.title, required this.items});

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
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150, // Adjust the width as needed
                  child: item,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
