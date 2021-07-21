import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Config/app_pages.dart';

class UpcomingEventsInfo extends StatefulWidget {
  @override
  _UpcomingEventsInfoState createState() => _UpcomingEventsInfoState();
}

class _UpcomingEventsInfoState extends State<UpcomingEventsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF110D1D),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Text(
                  "How Many days are left to sign up for this event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Lorem Ipsum has been the industry's standard and typesetting industry.Lorem Ipsum",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF3E214B),
                        Color(0xFF3E214B),
                        Color(0xFF04EFB0),
                        Color(0xFF04EFB0),
                      ]),
                ),
                width: MediaQuery.of(context).size.width / 1.1,
                height: 100.0,
                child: Row(
                  children: [
                    Text(
                      "Photos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Logo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "234.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "in Prize Pool",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                child: themeButton(
                  roundedBorder: true,
                  name: 'Sign Up',
                  onClick: () {
                    Get.toNamed(Routes.registernow);
                  },
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
