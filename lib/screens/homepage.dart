// import 'package:flutter/material.dart';
// import 'package:homepage/customewidgets/Headerwidget.dart';
// import 'package:homepage/customewidgets/SectionWidget.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => HomePageProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePageProvider with ChangeNotifier {
//   // Add your state management logic here
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               HeaderWidget(),
//               firstSectionWidget(
//                 // title: 'From your nearest stores',
//                 items: List.generate(
//                     4,
//                     (index) =>
//                         Placeholder(fallbackHeight: 100, fallbackWidth: 100)),
//               ),
//               firstSectionWidget(
//                 // title: 'Recommended products',
//                 items: List.generate(
//                     6,
//                     (index) =>
//                         Placeholder(fallbackHeight: 100, fallbackWidth: 100)),
//               ),
//               firstSectionWidget(
//                 // title: 'Last orders',
//                 items: [
//                   Container(
//                     color: Colors.orange,
//                     padding: EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         Icon(Icons.shopping_cart, color: Colors.white),
//                         Text('15 items', style: TextStyle(color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
