import 'package:flutter/material.dart';


class themeBody extends StatelessWidget {
  Widget body;

  themeBody({
    Key key,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 69,
                  height: 69,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "My Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
    );
  }
}