import 'package:flutter/cupertino.dart';

double getHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
double getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

final double BigHeading = 45.0;
final double NormalHeading = 35.0;