import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Utils/colors.dart';

class Loader {
  static show({
    BuildContext context,
  }) {
    AlertDialog alert = AlertDialog(
      backgroundColor: CentralizeColor.colorTransparent,
      elevation: 0,
      content: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: CentralizeColor.colorBlack.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              alignment: Alignment.center,
              child: CupertinoActivityIndicator(
                radius: 20,
              ))
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context ?? Get.context,
      barrierColor: CentralizeColor.colorTransparent,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
