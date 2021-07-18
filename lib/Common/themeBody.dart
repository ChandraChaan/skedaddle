import 'package:flutter/material.dart';


class themeBody extends StatelessWidget {
  final Widget title;
  final String assetmage;
  Widget body;

  themeBody({
    Key key,
    this.body,
    this.assetmage,
    this.title,
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
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  assetmage == null ? Container():Container(
                    width: 69,
                    height: 69,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(35))),
                    child: Image.asset('${assetmage}'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  title == null ?Container():title,
                ],
              ),
            ),
            Expanded(
                flex: assetmage == null ? 7:5 ,
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