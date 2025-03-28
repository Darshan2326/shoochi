import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> selectedItems;

  const CartScreen({Key? key, required this.selectedItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        backgroundColor: Colors.green,
      ),
      body: selectedItems.isEmpty
          ? Center(
              child: Text(
                "Your cart is empty!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                final item = selectedItems[index];

                // Validate the item and its properties
                if (item == null) {
                  return ListTile(
                    title: Text("Invalid item"),
                    subtitle: Text("This item could not be loaded."),
                  );
                }

                final image = item['image'] ??
                    'assets/default_image.png'; // Default image
                final name = item['name'] ?? 'Unknown Product'; // Default name
                final price = item['price'] ?? '0'; // Default price

                return ListTile(
                  leading: Image.asset(image,
                      errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons
                        .image_not_supported); // Fallback if image fails to load
                  }),
                  title: Text(name),
                  subtitle: Text("Price: $price"),
                );
              },
            ),
    );
  }
}
