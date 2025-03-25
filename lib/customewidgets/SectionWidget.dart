import 'package:flutter/material.dart';

class firstSectionWidget extends StatelessWidget {
  // final String title;
  final List<Widget> items;

  firstSectionWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          // child: Text(title,
          //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: items),
        ),
      ],
    );
  }
}
