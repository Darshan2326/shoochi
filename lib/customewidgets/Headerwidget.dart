import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('SOOOCHI', style: TextStyle(color: Colors.white, fontSize: 24)),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 4),
                Text('560562 - HOME', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: 16,
            child: Container(
              height: 35,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.blue),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
