import 'package:flutter/material.dart';
class WinnersPage extends StatelessWidget {
  const WinnersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('winners page',style: TextStyle(fontSize: 56),)),
      ),
    );
  }
}
