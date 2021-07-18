import 'package:flutter/material.dart';

import '../../Common/Button.dart';
import '../../Common/textField.dart';
class RegisterNow extends StatefulWidget {
  @override
  _RegisterNowState createState() => _RegisterNowState();
}

class _RegisterNowState extends State<RegisterNow> {
  double Heighty = 16.0;
  double smHeighty = 8.0;
  final FirstName = TextEditingController(text: '');
  final LastName = TextEditingController(text: '');
  final EmailId = TextEditingController(text: '');
  final StreetAddress = TextEditingController(text: '');
  final CountryVal = TextEditingController(text: '');
  final ZipVal = TextEditingController(text: '');
  final cityVal = TextEditingController(text: '');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              List: [Color(0xFF04EFB0),Color(0xFF3E214B),Color(0xFF3E214B),Color(0xFF110D1D),Color(0xFF110D1D),Color(0xFF110D1D),]
              // colors: [Color(0xFF04EFB0),Color(0xFF3E214B),Color(0xFF3E214B),Color(0xFF110D1D),Color(0xFF110D1D),Color(0xFF110D1D),]
          ),

        ),

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Register Now",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text("Quick fill",
                        style: TextStyle(color: Color(0xFF04EFB0),fontSize: 24.0,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Choose one of your existing profiles to quickly fill in the registration form",
                        style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text("Basic Info",
                        style: TextStyle(color: Color(0xFF04EFB0),fontSize: 22.0,fontWeight: FontWeight.normal),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'First Name*',
                            style: TextStyle(color: Colors.white,fontSize: 18.0),
                          ),
                          SizedBox(
                            height: smHeighty,
                          ),
                          Container(
                            child: formText(
                                '', '', FirstName, 'n', false),
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
                            'Last Name*',
                            style: TextStyle(color: Colors.white,fontSize: 18.0),
                          ),
                          SizedBox(
                            height: smHeighty,
                          ),
                          Container(
                            child: formText(
                                '', '', LastName, 'n', false),
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
                            'E-mail Address*',
                            style: TextStyle(color: Colors.white,fontSize: 18.0),
                          ),
                          SizedBox(
                            height: smHeighty,
                          ),
                          Container(
                            child: formText(
                                '', '', EmailId, 'n', false),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.yellowAccent,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29.0,
                      ),
                      Text("Additional Information",
                        style: TextStyle(color: Color(0xFF04EFB0),fontSize: 22.0,fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: smHeighty,
                      ),
                      Row(
                        children: [
                          Text("Date of Birth",style: TextStyle(color: Colors.white,fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 60.0,
                          ),
                          Text("Gender",style: TextStyle(color: Colors.white,fontSize: 18.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 29.0,
                      ),
                      Text("Address",
                        style: TextStyle(color: Color(0xFF04EFB0),fontSize: 24.0,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: smHeighty,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            'Street Address*',
                            style: TextStyle(color: Colors.white,fontSize: 18.0),
                          ),
                          SizedBox(
                            height: smHeighty,
                          ),

                          Container(
                            child: formText(
                                '', '', StreetAddress, 'n', false),
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
                                '', '', CountryVal, 'n', false),
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
                                '', '', ZipVal, 'n', false),
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
                                    '', '', cityVal, 'n', false),
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
                                    '', '', cityVal, 'n', false),
                                height: 50,
                                width: MediaQuery.of(context).size.width/2.5,
                                // color: Colors.yellowAccent,
                              ),
                            ],
                          ),

                        ],
                      ),

                      SizedBox(

                        height: 29.0,
                      ),
                      Text("Choose Your Package*",
                        style: TextStyle(color: Color(0xFF04EFB0),fontSize: 22.0,fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: smHeighty,
                      ),
                      Container(

                        height: 51,
                        width: MediaQuery.of(context).size.width ,
                        child: themeButton(
                          name:  'Continue',
                          onClick: () {

                          },
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),

                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
