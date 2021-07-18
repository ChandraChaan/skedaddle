import 'package:flutter/material.dart';
import 'package:skedaddle/Common/themeBody.dart';
import 'package:skedaddle/Common/themeBody2.dart';
import '../../Common/Button.dart';
import '../../Common/textField.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  double height = 34;

  double Heighty = 16.0;

  double smHeighty = 8.0;

  final Style = TextStyle(color: Colors.white);

  final tickid = TextEditingController(text: '');
  final chekinby = TextEditingController(text: '');
  final checkintime = TextEditingController(text: '');

  final remaerk = TextEditingController(text: '');

  final journy = TextEditingController(text: '');

  final paymentid = TextEditingController(text: '');
  bool checkin = false;
  String barcodeurl = "mt";
  final remark = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return themeBody(
      title: Text('Register Now', style: TextStyle(color: Colors.white,fontSize: 18),),
        // assetmage: ,
        body: Padding(
      padding: const EdgeInsets.only(left: 28, top: 25, right: 28),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
          Padding(
            padding: const EdgeInsets.only(left:2.0),
            child: Text(
              'Shipping Address',
              style: TextStyle(color: Color(0xFF04EFB0),fontSize: 24.0,fontWeight:FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'Full Name*',
                style: TextStyle(color: Colors.white,fontSize: 18.0),
              ),
              SizedBox(
                height: smHeighty,
              ),
              Container(
                child: formText(
                    '', '', tickid, 'n', false),
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellowAccent,
              ),
            ],
          ),
          SizedBox(
            height: Heighty,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address*',
                style: TextStyle(color: Colors.white,fontSize: 18.0),
              ),
              SizedBox(
                height: smHeighty,
              ),
              Container(
                child: formText(
                    '', '', remaerk, 'n', false),
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellowAccent,
              ),
            ],
          ),
          SizedBox(
            height: Heighty,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address2*',
                style: TextStyle(color: Colors.white,fontSize: 18.0),
              ),
              SizedBox(
                height: smHeighty,
              ),
              Container(
                child: formText(
                    '', '', tickid, 'n', false),
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellowAccent,
              ),
            ],
          ),
          SizedBox(
            height: Heighty,
          ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Country*',
                    style: TextStyle(color: Colors.white,fontSize: 18.0),
                  ),
                  SizedBox(
                    height: smHeighty,
                  ),
                  Container(
                    child: formText(
                        '', '', remaerk, 'n', false),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.yellowAccent,
                  ),
                ],
              ),
              SizedBox(
                height: Heighty,
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zip Code*',
                style: TextStyle(color: Colors.white,fontSize: 18.0),
              ),
              SizedBox(
                height: smHeighty,
              ),
              Container(
                child: formText(
                    '', '', remaerk, 'n', false),
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellowAccent,
              ),
            ],
          ),
          SizedBox(
            height: Heighty,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:100.0),
                    child: Text(
                      'City*',
                      style: TextStyle(color: Colors.white,fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: smHeighty,
                  ),
                  Container(
                    child: formText(
                        '', '', remaerk, 'n', false),
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.5,
                    // color: Colors.yellowAccent,
                  ),
                ],
              ),
              Column(
                children: [
                       Padding(
                         padding: const EdgeInsets.only(right:100.0),
                         child: Text(
                          'State*',
                          style: TextStyle(color: Colors.white,fontSize: 18.0),
                      ),
                       ),


                  SizedBox(
                    height: smHeighty,
                  ),
                  Container(
                    child: formText(
                        '', '', remaerk, 'n', false),
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.5,
                    // color: Colors.yellowAccent,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(

            height: 50,
            width: MediaQuery.of(context).size.width ,
            child: themeButton(
              roundedBorder: true,
              name:  'Continue',
              onClick: () {

              },
            ),
          ),
          SizedBox(
            height: 16.0,
          ),

             new SizedBox(
               width: MediaQuery.of(context).size.width,
            height: 58.0,
            child: RaisedButton(
              color: Colors.transparent, // background
              textColor: Color(0xFF04EFB0), // foreground
              onPressed: () { },
              child: Text('Back',style: TextStyle(fontSize: 18.0),),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )

        ]),
      ),
    ));
  }
}
