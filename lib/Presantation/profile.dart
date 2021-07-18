
import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/themeBody.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return themeBody(
      body: Container(
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: [

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Alexandria",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/2 ,
                  child: themeButton(
                    name:  'Edit profile',
                    onClick: () {

                    },
                  ),
                ),
              ),
              Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("67",
                style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text("56",
                      style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ],
              )),
              Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Followers",
                      style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.normal),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Following",
                      style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.normal),),
                  ),
                ],
              )),
              const Divider(
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Color(0xFF06E3A8),
              ),
              Container(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("My Challenges",
                      style: TextStyle(color: Color(0xFF06E3A8),fontSize: 20, fontWeight: FontWeight.normal),),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("My Stats",
                      style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.normal),),
                  ),
                ],
              )),
              const Divider(
                height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Color(0xFF06E3A8),
              ),

            ],
          )),
    );
  }
}
