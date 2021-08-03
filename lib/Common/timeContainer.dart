import 'package:flutter/material.dart';
class timeContainer extends StatelessWidget {
  final int nunber;
  timeContainer({this.nunber});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 34,
        height: 40,
        color: Colors.pinkAccent,
        child: Center(
          child: Text(
              nunber != null ?'${nunber}'.toString() : ':'.toString(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
