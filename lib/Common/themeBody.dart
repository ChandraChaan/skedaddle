import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Config/app_pages.dart';

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
      // appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              // List: [Color(0xFF04EFB0),Color(0xFF3E214B),Color(0xFF281531),]
              colors: [
                Color(0xFF04EFB0),
                Color(0xFF3E214B),
                Color(0xFF281531),
              ]),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            onPressed: () {
                              Get.toNamed(Routes.DEFAULT);
                              // Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back)),
                      )),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        assetmage == null
                            ? Container()
                            : Container(
                                width: 69,
                                height: 69,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                child: Image.asset('${assetmage}'),
                              ),
                        SizedBox(
                          height: 12,
                        ),
                        title == null ? Container() : title,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: assetmage == null ? 7 : 5,
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
