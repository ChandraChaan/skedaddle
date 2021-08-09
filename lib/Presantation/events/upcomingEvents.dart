import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';
import 'package:skedaddle/Common/timeContainer.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Utils/constants.dart';

import 'choosePackage.dart';

class UpcomingEventsInfo extends StatefulWidget {
  @override
  _UpcomingEventsInfoState createState() => _UpcomingEventsInfoState();
}

class _UpcomingEventsInfoState extends State<UpcomingEventsInfo> {
  final rulesTextControl =
      TextEditingController(text: 'View challenge details and rules');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF110D1D),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/upcomingevents.png",
                width: getWidth(context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38, right: 38),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "How many days are left to sign up this event",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          timeContainer(nunber: 0),
                          timeContainer(nunber: 1),
                          // timeContainer(),
                          Text(
                            ':'.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF06E3A8),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          timeContainer(nunber: 2),
                          timeContainer(nunber: 5),
                          // timeContainer(),
                          Text(
                            ':'.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF06E3A8),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          timeContainer(nunber: 3),
                          timeContainer(nunber: 8),
                        ],
                      ),
                    ),
                  ],
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(
                        // begin: Alignment.topLeft,
                        // end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF331940),
                          Color(0xFF3E214B),
                          Color(0xFF04EFB0),
                          Color(0xFF18C19E),
                        ]),
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 100.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      // color:Colors.white,
                                      child: Stack(
                                        children: [
                                          // for(int i=0; i<4; i*5)
                                          CircleAvatar(
                                            child: Image.asset(
                                                'assets/images/Ellipse 47-1.png'),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 26),
                                            child: CircleAvatar(
                                              child: Image.asset(
                                                  'assets/images/Ellipse 47.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 52),
                                            child: CircleAvatar(
                                              child: Image.asset(
                                                  'assets/images/Ellipse 47-2.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 78),
                                            child: CircleAvatar(
                                              child: Image.asset(
                                                  'assets/images/Ellipse 47-1.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 100),
                                            child: CircleAvatar(
                                              child: Image.asset(
                                                  'assets/images/Ellipse 47.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 105),
                                            child: CircleAvatar(
                                              child: Image.asset(
                                                  'assets/images/Ellipse 47-2.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Attendees",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          // mainAxisSize:,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(22),
                                // color: Colors.white,
                              ),
                              width: 47,
                              height: 47,
                              child: Center(
                                child: Text(
                                  "\$",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 29.0,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '234.00',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'in prize pool',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: getWidth(context) / 1.4,
                      child: UiFormText(
                          hint: 'email',
                          label: 'r',
                          controllercc: rulesTextControl,
                          normalFeild: true,
                          readonlyye: false),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //     begin: Alignment.topLeft,
                        //     end: Alignment.bottomRight,
                        //     colors: [Color(0xFF06E3A8), Color(0xFF3E214B)]),
                        borderRadius: BorderRadius.circular(22), // radius of 10
                        color: Color(0xFF06E3A8), // green as background color
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                child: Container(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.av_timer,
                                color: Color(0xFF06E3A8),
                                size: 22,
                              ),
                              Text(
                                'Sunday, 05AM',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Host: ',
                                style: TextStyle(color: Color(0xFF06E3A8)),
                              ),
                              Text(
                                'Skedaddle',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Required: ',
                                style: TextStyle(color: Color(0xFF06E3A8)),
                              ),
                              Text(
                                'Strava',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$',
                                style: TextStyle(color: Color(0xFF06E3A8)),
                              ),
                              Text(
                                '75 (Best amount)',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Challenge type: ',
                                style: TextStyle(color: Color(0xFF06E3A8)),
                              ),
                              Text(
                                'Walk',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.1,
                child: themeButton(
                  roundedBorder: true,
                  name: 'Continue',
                  onClick: () {
                    // Get.toNamed(Routes.eventsPage)
                    Get.to(choosePackagepage());
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
