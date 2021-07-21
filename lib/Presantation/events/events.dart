import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/themeBody.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return themeBody(
      title: Text(
        'Upcoming Events',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: ListView.builder(
          shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Get.toNamed(Routes.upcomingEvents);
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), // radius of 10
                      color: Color(0xFFF9E79F), // green as background color
                    ),
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 153.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25), // radius of 10
                            color: Color(0xFF707070), // green as background color
                          ),
                        ),
                        Row(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                'assets/icons/facebbok.png',
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            SizedBox(width: 4.0),
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/icons/google.png'),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}