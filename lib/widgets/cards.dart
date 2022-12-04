import 'package:flutter/material.dart';

Widget Cards(Color color, BuildContext context, IconData icon, String stockNumber, String newCount) {
  return Card(
    elevation: 2,
    child: Container(
      padding: EdgeInsets.all(20),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                icon,
                size: 36,
                color: Colors.white,
              ),
              Text("View Details")
            ],
          )
        ],
      ), ),
  );
}