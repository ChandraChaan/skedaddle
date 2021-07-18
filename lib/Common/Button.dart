import 'package:flutter/material.dart';

class themeButton extends StatelessWidget {
  final String name;
  final Color nameColor;
  final bool roundedBorder;
  final Color borderColor;
  final bool fillColor;
  void Function() onClick;
  themeButton({
    Key key,
    this.name, this.onClick, this.roundedBorder =false,this.fillColor = true, this.nameColor, this.borderColor
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Color(0xFF3E214B),Color(0xFF06E3A8)]
            ),
            // color: fillColor == true ? Colors.teal[700] : null,
            // border: Border.all(
            //   color: borderColor == null ? Colors.teal[700]:borderColor,
            // ),
            borderRadius: roundedBorder == true ? BorderRadius.all(Radius.circular(30)): BorderRadius.all(Radius.circular(12))),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
              '${name}',
              style: TextStyle(fontSize: 22, color: nameColor == null ?Colors.white : nameColor),
            )),
      ),
    );
  }
}