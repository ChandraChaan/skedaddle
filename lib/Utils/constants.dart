import 'package:flutter/cupertino.dart';

import 'colors.dart';

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

final double BigHeading = 45.0;
final double NormalHeading = 30.0;

TextStyle UInormalStyle =
    TextStyle(color: UiWhiteColor, fontSize: 16, fontWeight: FontWeight.bold);
