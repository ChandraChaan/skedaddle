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
                          child: Image.asset('assets/images/running1.png'),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25), // radius of 10
                            color: Colors.tealAccent, // green as background color
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
                        Padding(
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
                                  padding:
                                  const EdgeInsets.only(left: 100),
                                  child: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/Ellipse 47.png'),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 105),
                                  child: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/Ellipse 47-2.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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
