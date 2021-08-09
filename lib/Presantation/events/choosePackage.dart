import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Utils/constants.dart';

class choosePackagepage extends StatefulWidget {
  @override
  _choosePackagepageState createState() => _choosePackagepageState();
}

class _choosePackagepageState extends State<choosePackagepage> {
  bool selected0 = false;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF4444444), Color(0xFF331940)]),
          ),
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Package *',
                  style: TextStyle(
                      color: Color(0xFF04EFB0),
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            // if (index == 0) {
                            //   selected0 = true;
                            // }
                            // setState(() {});
                            Get.toNamed(Routes.regCart);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: index == 0 ?Colors.green:Color(0xFFF9E79F), // green as background color
                                ),
                                borderRadius: BorderRadius.circular(25),
                                // radius of 10
                                color: Color(
                                    0xFFF9E79F), // green as background color
                              ),
                              height: MediaQuery.of(context).size.height / 2.5,
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                              alignment : Alignment.topLeft,
                                    child: Container(
                                      // height: 33,
                                      width: 123,
                                      decoration: BoxDecoration(
                                          color:Color(0xFFF8C471),
                                          border: Border.all(
                                            color: Color(0xFFF8C471),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6))),
                                      child: Center(
                                        child: Text(
                                          index.isOdd?'GOLD PACKAGE ':'SILVER PACKAGE ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 153.0,
                                      width: 320.0,
                                      child: Image.asset(
                                          'assets/images/running1.png'),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            25), // radius of 10
                                        // color: Colors.tealAccent, // green as background color
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "APR",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'san-serif'),
                                        ),
                                        SizedBox(
                                          width: 4.0,
                                        ),
                                        Text(
                                          "Join an didas  Runners Event...",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'san-serif'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "26",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 26.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'san-serif'),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        "Sunday, 05AM  Amazonia",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'san-serif'),
                                      ),
                                    ],
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(18.0),
                                  //   child: Container(
                                  //     // color:Colors.white,
                                  //     child: Stack(
                                  //       children: [
                                  //         // for(int i=0; i<4; i*5)
                                  //         CircleAvatar(
                                  //           child: Image.asset(
                                  //               'assets/images/Ellipse 47-1.png'),
                                  //         ),
                                  //         Padding(
                                  //           padding:
                                  //           const EdgeInsets.only(left: 26),
                                  //           child: CircleAvatar(
                                  //             child: Image.asset(
                                  //                 'assets/images/Ellipse 47.png'),
                                  //           ),
                                  //         ),
                                  //         Padding(
                                  //           padding:
                                  //           const EdgeInsets.only(left: 52),
                                  //           child: CircleAvatar(
                                  //             child: Image.asset(
                                  //                 'assets/images/Ellipse 47-2.png'),
                                  //           ),
                                  //         ),
                                  //         Padding(
                                  //           padding:
                                  //           const EdgeInsets.only(left: 78),
                                  //           child: CircleAvatar(
                                  //             child: Image.asset(
                                  //                 'assets/images/Ellipse 47-1.png'),
                                  //           ),
                                  //         ),
                                  //         Padding(
                                  //           padding:
                                  //           const EdgeInsets.only(left: 100),
                                  //           child: CircleAvatar(
                                  //             child: Image.asset(
                                  //                 'assets/images/Ellipse 47.png'),
                                  //           ),
                                  //         ),
                                  //         Padding(
                                  //           padding:
                                  //           const EdgeInsets.only(left: 105),
                                  //           child: CircleAvatar(
                                  //             child: Image.asset(
                                  //                 'assets/images/Ellipse 47-2.png'),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: themeButton(
                    roundedBorder: true,
                    name: 'Continue',
                    onClick: () {
                      // Get.toNamed(Routes.eventsPage)
                      // Get.to(choosePackagepage());
                      Get.toNamed(Routes.regCart);
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
      ),
    );
  }
}
