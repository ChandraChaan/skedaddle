import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Application/Controller/FrontEventsController.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Presantation/profile.dart';
import 'package:skedaddle/Presantation/widgets/connections.dart';
import 'package:skedaddle/Presantation/widgets/mainEvents.dart';
import 'package:skedaddle/Presantation/widgets/winners.dart';
import 'package:skedaddle/Utils/constants.dart';

import 'events/events.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 2;
  final FrontEventsController events = Get.find();
  Color whiteui = Colors.white70;
  Color drawericoncolor = Colors.white;
  TextStyle textstyle = TextStyle(color: Colors.white);
  List<Widget> navigavtionPage = [
    Connections(),
    EventsPage(),
    mainEvents(),
    WinnersPage(),
    Profile()
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      events.callAPI();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4444444), Color(0xFF331940)]),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _currentPage == 2
              ? AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: getWidth(context) / 2.5,
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 40,
                            fit: BoxFit.fitHeight,
                          )),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(Icons.notifications_active),
                    )
                  ],
                )
              : null,
          drawer: Drawer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF3E214B), Color(0xFF06E3A8)]),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(height: 71),
                  Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          'assets/images/Ellipse 47-1.png',
                          // color: drawericoncolor,
                          // height: 20,
                        ),
                      ),
                      title: Text('Alexandria', style: textstyle),
                      onTap: () {
                        // Get.toNamed(Routes.);
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                  SizedBox(height: 29),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/homeIcon.png',
                      color: drawericoncolor,
                      height: 20,
                    ),
                    title: Text(
                      'Home',
                      style: textstyle,
                    ),
                    onTap: () {
                      // Get.toNamed(Routes.);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/userNa.png',
                      color: drawericoncolor,
                      height: 20,
                    ),
                    title: Text('My profile', style: textstyle),
                    onTap: () {
                      Get.toNamed(Routes.profile);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/calender.png',
                      color: drawericoncolor,
                      height: 20,
                    ),
                    title: Text('Events', style: textstyle),
                    onTap: () {
                      Get.toNamed(Routes.eventsPage);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_run_outlined,
                      color: drawericoncolor,
                      size: 30,
                    ),
                    title: Text('Challenges', style: textstyle),
                    onTap: () {
                      Get.toNamed(Routes.Winners);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: drawericoncolor,
                      size: 25,
                    ),
                    title: Text('Settings', style: textstyle),
                    onTap: () {
                      // Get.toNamed(Routes.upcomingEvents);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      color: drawericoncolor,
                      size: 25,
                    ),
                    title: Text('Help', style: textstyle),
                    onTap: () {
                      // Get.toNamed(Routes.upcomingEvents);
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: drawericoncolor,
                      size: 25,
                    ),
                    title: Text('Logout', style: textstyle),
                    onTap: () {
                      Get.toNamed(Routes.login);
                    },
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            // child: ,
            child: _currentPage == 2
                ? Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Good Morning,',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                                Text(
                                  ' Alexandria',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 9,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Upcoming Events',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextButton(
                                          child: Text('See More',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16)),
                                          onPressed: () {
                                            Get.toNamed(Routes.eventsPage);
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 180,
                                      child: events.obx(
                                        (state) {
                                          return ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: state
                                                .results['data']['rows']['data']
                                                .length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return InkWell(
                                                onTap: () {
                                                  // Get.toNamed(
                                                  //     Routes.upcomingEvents);
                                                  Get.toNamed(Routes.eventsPage);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: index.isOdd
                                                            ? Color(0xFFFF9D48)
                                                            : Color(0xFF04EFB0),
                                                        border: Border.all(
                                                          color: index.isOdd
                                                              ? Color(
                                                                  0xFFFF9D48)
                                                              : Color(
                                                                  0xFF04EFB0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20))),
                                                    width: 252,
                                                    height: 169,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  height: 33,
                                                                  width: 93,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color: index.isOdd
                                                                              ? Color(
                                                                                  0xFFF8C471)
                                                                              : Color(
                                                                                  0xFF58D68D),
                                                                          border: Border
                                                                              .all(
                                                                            color: index.isOdd
                                                                                ? Color(0xFFF8C471)
                                                                                : Color(0xFF58D68D),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(12))),
                                                                  child: Center(
                                                                    child: Text(
                                                                      '${state.results['data']['rows']['data'][index]['status']}',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 23,
                                                                  width: 123,
                                                                  // color: Color(
                                                                  //     0xFF58D68D),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        size:
                                                                            19,
                                                                        color:
                                                                            whiteui,
                                                                      ),
                                                                      Text(
                                                                        'Sunday, 05AM',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              '${state.results['data']['rows']['data'][index]['title']}'
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color:
                                                                      whiteui,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 17),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  height: 23,
                                                                  width: 93,
                                                                  // color: Color(
                                                                  //     0xFF58D68D),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .location_on,
                                                                          size:
                                                                              19,
                                                                          color:
                                                                              whiteui,
                                                                        ),
                                                                        Text(
                                                                          '${state.results['data']['rows']['data'][index]['address']}',
                                                                          style:
                                                                              TextStyle(color: Colors.white),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 23,
                                                                  width: 123,
                                                                  // color: Color(
                                                                  //     0xFF58D68D),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .people_outline_rounded,
                                                                        size:
                                                                            19,
                                                                        color:
                                                                            whiteui,
                                                                      ),
                                                                      Text(
                                                                        '${state.results['data']['rows']['data'][index]['image_id']} Members',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    // color: Color(0xFF04EFB0),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        onLoading: Center(
                                            child: CircularProgressIndicator(
                                                color: Colors.purple)),
                                        onError: (error) {
                                          return Text(error);
                                        },
                                      ),
                                    ),
                                    Divider(
                                      endIndent: 0,
                                      thickness: 3,
                                      height: 21,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      height: 147,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(22.0)),
                                          image: DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                'assets/images/Mask Group 10.png',
                                              ))),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Stats'.toUpperCase(),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24),
                                                  ),
                                                  Text(
                                                    'Total Challenges',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16),
                                                  ),
                                                  Stack(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundImage: AssetImage(
                                                            'assets/images/Ellipse 47.png'),
                                                      ),
                                                      CircleAvatar(
                                                        backgroundImage: AssetImage(
                                                            'assets/images/Ellipse 47.png'),
                                                      ),
                                                      CircleAvatar(
                                                        backgroundImage: AssetImage(
                                                            'assets/images/Ellipse 47.png'),
                                                      ),
                                                      CircleAvatar(
                                                        backgroundImage: AssetImage(
                                                            'assets/images/Ellipse 47.png'),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/Group 2672.png',
                                                    scale: 6,
                                                  ),
                                                  Text(
                                                    '80'.toUpperCase(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                    ],
                  )
                : navigavtionPage.elementAt(_currentPage),
          ),
          bottomNavigationBar: _createBottomNavigationBar()),
    );
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF110D1D), Color(0xFF3E214B)],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.8],
          tileMode: TileMode.clamp,
        ),
      ),
      child: BottomNavigationBar(
        // currentIndex: 0,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white),
        // type: BottomNavigationBarType.fixed,
        onTap: (num) {
          _currentPage = num;
          setState(() {});
        },
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Connect_1_.png',
                color: Colors.white,
                height: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/calender.png',
                color: Colors.white,
                height: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/homeIcon.png',
                color: Colors.white,
                height: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/trophy.png',
                color: Colors.white,
                height: 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/userNa.png',
                color: Colors.white,
                height: 20,
              ),
              label: '')
        ],
      ),
    );
  }
}
