import 'package:flutter/material.dart';


class themeBody2 extends StatelessWidget {
  Widget body;

  themeBody2({
    Key key,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              // List: [Color(0xFF04EFB0),Color(0xFF3E214B),Color(0xFF281531),]
              colors: [Color(0xFF04EFB0),Color(0xFF3E214B),Color(0xFF281531),]
          ),

        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(

                    decoration: BoxDecoration(
                      color: Color(0xFF281531),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    child: body)),
          ],
        ),
      ),
    );
  }
}