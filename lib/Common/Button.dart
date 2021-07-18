import 'package:flutter/material.dart';

class themeButton extends StatelessWidget {
  final String name;
  void Function() onClick;
  themeButton({
    Key key,
    this.name, this.onClick,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal[700],
            border: Border.all(
              color: Colors.teal[700],
            ),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: 57,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
              '${name}',
              style: TextStyle(fontSize: 22, color: Colors.white),
            )),
      ),
    );
  }
}