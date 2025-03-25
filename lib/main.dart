import 'package:flutter/material.dart';
import 'package:homepage/customewidgets/Headerwidget.dart';
import 'package:homepage/customewidgets/SectionWidget.dart';
import 'package:homepage/customewidgets/nearestStore.dart';
import 'package:homepage/customewidgets/recomandedproduct.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundScreen(),
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      // title: 'From your nearest stores',
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
                    Neareststore(
                      title: 'From your nearest stores',
                      items: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    RecommendedProduct(
                      title: 'Recommended products',
                      items: List.generate(
                        8,
                        (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    RecommendedProduct(
                      title: 'Latest Product',
                      items: List.generate(
                        8,
                        (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    RecommendedProduct(
                      title: 'Last Orders',
                      items: List.generate(
                        8,
                        (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ),
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
