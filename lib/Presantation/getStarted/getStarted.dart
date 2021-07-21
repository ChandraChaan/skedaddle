import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

class GetStartedImage extends StatelessWidget {
  const GetStartedImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: getWidth(context),
        height: getHeight(context),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage('assets/images/getstarted.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
            height: getHeight(context),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        width: getWidth(context) / 2,
                        child: Image.asset('assets/images/logo.png')),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                          width: getWidth(context) / 1.3,
                          child: Text(
                            'Lorem Ipsum is Dummy Text',
                            style: TextStyle(
                                color: UiGreenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: BigHeading),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: getWidth(context) / 1.3,
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                            style: TextStyle(color: UiWhiteColor),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: getWidth(context)/1.1,
                          child: themeButton(
                            roundedBorder: true,
                            borderColor: UiWhiteColor,
                            nameColor: UiGreenColor,
                            name: 'Get Started!',
                            onClick: () {
                              Get.toNamed(Routes.login);
                            },
                            fillColor: false,
                          ),
                        )
                      ],
                    )))
              ],
            )),
      ),
    );
  }
}
