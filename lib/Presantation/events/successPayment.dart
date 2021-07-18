import 'package:flutter/material.dart';
import 'package:skedaddle/Common/themeBody.dart';
import 'package:skedaddle/Common/themeBody2.dart';
import '../../Common/Button.dart';

class SuccessPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return themeBody(
      // title: ,
        body: Padding(
        padding: const EdgeInsets.only(left: 28, top: 25, right: 28),
    child:Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Successful Payment',
            style: TextStyle(color: Color(0xFF04EFB0),fontSize: 27.0,fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Order Number 12345678890',
            style: TextStyle(color: Colors.white,fontSize: 16.0),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            'Thanks for your payment',
            style: TextStyle(color: Color(0xFF04EFB0),fontSize: 16.0),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(

            height: 56,
            width: MediaQuery.of(context).size.width/1.8,
            child: themeButton(
              name:  'Done',
              onClick: () {

              },
            ),
          ),

        ],
      ),
    ),

        ),);
  }
}
