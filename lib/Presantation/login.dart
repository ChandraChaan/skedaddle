import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Presantation/profile.dart';
import 'package:skedaddle/Presantation/signup.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

import 'forgetPassword.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final remark = TextEditingController();
  final emailControl = TextEditingController();
  final pwControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: getWidth(context),
          height: getHeight(context),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('assets/images/runnigImage.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
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
                  )),
              Expanded(
                flex: 8,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              // fontFamily: 'RobotoMono',
                              color: UiWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: NormalHeading),
                        ),
                        Text(
                          "Please sign in to continue",
                          style: TextStyle(color: UiWhiteColor,fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        UiFormText(
                            hint: 'Email',
                            label: 'email',
                            controllercc: emailControl,
                            normalFeild: true,
                            readonlyye: false),
                        SizedBox(
                          height: 10,
                        ),
                        UiFormText(
                            hint: 'Password',
                            label: 'Password',
                            controllercc: pwControl,
                            normalFeild: true,
                            readonlyye: false),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: themeButton(
                            name: 'Login',
                            onClick: () {
                              Get.toNamed(Routes.eventsPage);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forgetPassword()),
                                );
                              },
                              child: Text('Forgot password?',
                                  style: TextStyle(
                                      fontSize: 14, color: UiWhiteColor))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 2,
                              width: getWidth(context) / 2.7, // Thickness
                              // height: double.infinity,
                              color: Colors.grey,
                            ),
                            Text("OR",
                                style: TextStyle(
                                    fontSize: 14, color: UiWhiteColor)),
                            Container(
                              height: 2,
                              width: getWidth(context) / 2.7, // Thickness
                              // height: double.infinity,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Sign in with",
                                style: TextStyle(
                                    fontSize: 16, color: UiWhiteColor))),
                        // SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                               width: 50,
                               child: Image.asset('assets/icons/facebbok.png',),

                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                                child: Image.asset('assets/icons/google.png',),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text('Don\'t have an account?',
                                    style: TextStyle(
                                        fontSize: 16, color: UiWhiteColor)),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUp()),
                                    );
                                  },
                                  child: Text('Sign up',
                                      style: TextStyle(
                                          fontSize: 16, color: UiGreenColor, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // TextButton(
                        //   style: TextButton.styleFrom(
                        //     textStyle: const TextStyle(fontSize: 16),
                        //   ),
                        //   onPressed: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => Profile()),
                        //     );
                        //   },
                        //   child: const Text('Profile'),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
