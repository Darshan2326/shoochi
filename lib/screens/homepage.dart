import 'package:flutter/material.dart';
import 'package:homepage/customewidgets/Headerwidget.dart';
import 'package:homepage/customewidgets/SectionWidget.dart';
import 'package:homepage/customewidgets/nearestStore.dart';
import 'package:homepage/customewidgets/recomandedproduct.dart';
import 'package:homepage/models/homepagemodels.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch temporary data
    final stores = Store.getTemporaryData();

    // Example product data for RecommendedProduct
    final products = [
      {'image': 'assets/images/product1.png'},
      {'image': 'assets/images/product2.png'},
      {'image': 'assets/images/product3.png'},
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Green Upper Part
              Container(
                height: MediaQuery.of(context).size.height *
                    0.32, // 32% of screen height
                color: Colors.green,
                child: Column(
                  children: [
                    HeaderWidget(),
                    firstSectionWidget(
                      items: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // Pass the Neareststore widget directly
                    Neareststore(
                      title: 'From your nearest stores',
                      stores: stores, // Pass the temporary data here
                    ),
                    // Display RecommendedProduct widget
                    RecommendedProduct(
                      title: 'Recommended Products',
                      products: products, // Pass the product data here
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}