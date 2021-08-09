import 'package:flutter/material.dart';
class timeContainer extends StatelessWidget {
  final int nunber;
  timeContainer({this.nunber});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF06E3A8), Color(0xFF3E214B)]),
          borderRadius: BorderRadius.circular(12), // radius of 10
          // color: Color(0xFFF9E79F), // green as background color
        ),
        width:47,
        height:47,
        child: Center(
          child: Text(nunber.toString(),
            style: TextStyle(
                color: Color(0xFF06E3A8),
                fontSize:30,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
