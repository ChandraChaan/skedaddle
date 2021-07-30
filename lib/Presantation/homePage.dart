import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Presantation/profile.dart';
import 'package:skedaddle/Presantation/widgets/connections.dart';
import 'package:skedaddle/Presantation/widgets/mainEvents.dart';
import 'package:skedaddle/Presantation/widgets/winners.dart';

import 'events/events.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 2;
  Color drawericoncolor = Colors.black;
  List<Widget> navigavtionPage = [
    Connections(),
    EventsPage(),
    mainEvents(),
    WinnersPage(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _currentPage ==2?AppBar(
          title: Text('Skadaddle'),
        ):null,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Skadaddle'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),

              ListTile(
                  leading:Image.asset('icons/homeIcon.png', color: drawericoncolor,height: 20,),
                title: Text('Home'),
                onTap: () {
                  // Get.toNamed(Routes.);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  leading:Image.asset('icons/userNa.png', color: drawericoncolor,height: 20,),
                title: Text('My profile'),
                onTap: () {
                  Get.toNamed(Routes.profile);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  leading:Image.asset('images/calender.png', color: drawericoncolor,height: 20,),
                title: Text('Events'),
                onTap: () {
                  Get.toNamed(Routes.eventsPage);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  leading:Icon(Icons.directions_run_outlined,color: drawericoncolor,size: 30,),
                title: Text('Challenges'),
                onTap: () {
                  Get.toNamed(Routes.Winners);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  leading:Icon(Icons.settings,color: drawericoncolor,size: 25,),
                title: Text('Settings'),
                onTap: () {
                  // Get.toNamed(Routes.upcomingEvents);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  leading:Icon(Icons.help,color: drawericoncolor,size: 25,),
                title: Text('Help'),
                onTap: () {
                  // Get.toNamed(Routes.upcomingEvents);
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.logout,color: drawericoncolor,size: 25,),
                title: Text('Logout'),
                onTap: () {
                  Get.toNamed(Routes.login);
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: navigavtionPage.elementAt(_currentPage),
        ),
        bottomNavigationBar: _createBottomNavigationBar());
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
        onTap: (num){
          _currentPage = num;
          setState(() {

          });
        },
        currentIndex:_currentPage,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('images/Connect_1_.png', color: Colors.white,height: 20,),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/calender.png', color: Colors.white,height: 20,),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('icons/homeIcon.png', color: Colors.white,height: 20,),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/trophy.png', color: Colors.white,height: 20,),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('icons/userNa.png', color: Colors.white,height: 20,),
              label:''
          )
        ],
      ),
    );
  }
}
