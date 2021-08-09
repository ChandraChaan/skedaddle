import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

class forgetPassword extends StatefulWidget {
  @override
  _forgetPasswordState createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  final emailControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Container(
          width: getWidth(context),
          height: getHeight(context),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('assets/images/runnigImage.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: getWidth(context) / 2,
                      child: Image.asset('assets/images/logo.png', fit: BoxFit.fitWidth,)),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      color: UiWhiteColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'san-serif'),
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120.0),
                child: Text(
                  "Enter your email address below to reset password.",
                  style: TextStyle(
                      color: UiWhiteColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'san-serif'),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              UiFormText(
                  hint: 'Email',
                  label: 'email',
                  controllercc: emailControl,
                  normalFeild: true,
                  readonlyye: false),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: themeButton(
                  name: 'Reset Password',
                  onClick: () {},
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
