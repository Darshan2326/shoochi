import 'package:flutter/material.dart';
import 'package:homepage/customewidgets/Headerwidget.dart';
import 'package:homepage/customewidgets/SectionWidget.dart';
import 'package:homepage/customewidgets/lastorder.dart';
import 'package:homepage/customewidgets/nearestStore.dart';
import 'package:homepage/customewidgets/recomandedproduct.dart';
import 'package:homepage/models/homepagemodels.dart';
import 'package:homepage/models/lastorderModel.dart';
import 'package:homepage/models/recomandadProductModels.dart';
import 'package:homepage/screens/cartScreen.dart';

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({super.key});

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  final ValueNotifier<int> cartItemCount = ValueNotifier<int>(0);
  final List<Map<String, String>> selectedItems =
      []; // List to store selected items

  void addToCart(Map<String, String> product) {
    selectedItems.add(product); // Add the selected product to the list
    cartItemCount.value = selectedItems.length; // Update the cart count
  }

  @override
  Widget build(BuildContext context) {
    final stores = Store.getTemporaryData();
    final products = RecommendedProductList.getProducts();
    final lastorder = LastOrder.lastorderTempData();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Green Upper Part
                  Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    color: Colors.green,
                    child: Column(
                      children: [
                        HeaderWidget(),
                        firstSectionWidget(
                          items: List.generate(
                            5,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 200,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // White Lower Part with Rounded Corners
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Neareststore(
                          title: 'From your nearest stores',
                          stores: stores,
                        ),
                        RecommendedProduct(
                          title: 'Recommended Products',
                          products: products,
                          onAddToCart: (product) =>
                              addToCart(product), // Pass the callback
                        ),
                        Lastorder(
                          title: "Last Order",
                          products: lastorder,
                          onAddToCart: (product) =>
                              addToCart(product), // Pass the callback
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Popup for "Go to Cart"
            ValueListenableBuilder<int>(
              valueListenable: cartItemCount,
              builder: (context, count, child) {
                if (count == 0) return SizedBox.shrink();
                return Positioned(
                  bottom: 10,
                  left: MediaQuery.of(context).size.width * 0.3,
                  right: MediaQuery.of(context).size.width * 0.3,
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the cart screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CartScreen(selectedItems: selectedItems),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 165, 0, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Image(
                                image: AssetImage("assets/products/5.png"),
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: Text(
                              count.toString(),
                              style:
                                  TextStyle(color: Colors.green, fontSize: 14),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Items",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
