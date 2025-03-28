import 'package:flutter/material.dart';
import 'package:homepage/models/homepagemodels.dart'; // Import the Store model

class Neareststore extends StatelessWidget {
  final String title;
  final List<Store> stores; // Accept a list of Store objects

  Neareststore({required this.title, required this.stores});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
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
            children: stores.map((store) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 6,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(store.storeImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          store.storeName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Distance
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '${store.km} km away',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          // child: Row(
          //   children: stores.map((store) {
          //     return Padding(
          //       padding: const EdgeInsets.only(left: 10, right: 10),
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         elevation: 4,
          //         child: Container(
          //           height: 250,
          //           width: 250,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             image: DecorationImage(
          //               image: AssetImage(store.storeImage),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           child: Stack(
          //             children: [
          //               // Gradient overlay at the bottom
          //               Positioned(
          //                 bottom: 0,
          //                 left: 0,
          //                 right: 0,
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.only(
          //                       bottomLeft: Radius.circular(20),
          //                       bottomRight: Radius.circular(20),
          //                     ),
          //                     gradient: LinearGradient(
          //                       colors: [
          //                         Colors.black.withOpacity(0.7),
          //                         Colors.black.withOpacity(0.3),
          //                       ],
          //                       begin: Alignment.bottomCenter,
          //                       end: Alignment.topCenter,
          //                     ),
          //                   ),
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: [
          //                       // Store name
          //                       Text(
          //                         store.storeName,
          //                         style: TextStyle(
          //                           fontSize: 16,
          //                           fontWeight: FontWeight.bold,
          //                           color: Colors.white,
          //                         ),
          //                       ),
          //                       // Distance
          //                       Text(
          //                         '${store.km} km away',
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           color: Colors.white70,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     );
          //   }).toList(),
          // ),
        ),
      ],
    );
  }
}
