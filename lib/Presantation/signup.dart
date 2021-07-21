import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();
  final cnfrmpwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 31.0),
            width: getWidth(context),
            height: getHeight(context),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('images/runnigImage.png'),
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
                          child: Image.asset('images/logo.png')),
                    )),
                SizedBox(
                  height: 30,
                ),
                Align(alignment:Alignment.topLeft,
                    child:Text("Sign up",
                      style: TextStyle(
                          color: UiWhiteColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'san-serif'),)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Please sign in to continue",style: TextStyle(
                        color: UiWhiteColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'san-serif'),)),
                SizedBox(
                  height: 14,
                ),
                UiFormText(
                    hint: 'First Name',
                    label: 'First Name',
                    controllercc: firstname,
                    normalFeild: true,
                    readonlyye: false),
                SizedBox(
                  height: 12,
                ),
                UiFormText(
                    hint: 'Last Name',
                    label: 'Last Name',
                    controllercc: lastname,
                    normalFeild: true,
                    readonlyye: false),
                SizedBox(
                  height: 12,
                ),
                UiFormText(
                    hint: 'Email',
                    label: 'Email',
                    controllercc: email,
                    normalFeild: true,
                    readonlyye: false),
                SizedBox(
                  height: 12,
                ),
                UiFormText(
                    hint: 'Password',
                    label: 'Password',
                    controllercc: pwd,
                    normalFeild: true,
                    readonlyye: false),
                SizedBox(
                  height: 12,
                ),
                UiFormText(
                    hint: 'Confirm Password',
                    label: 'Confirm Password',
                    controllercc: cnfrmpwd,
                    normalFeild: true,
                    readonlyye: false),
                SizedBox(
                  height: 22,
                ),

                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width ,
                  child: themeButton(
                    name:  'Sign up',
                    onClick: () {
                    },
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text("By Creatingn account you agree to our",
                    style: TextStyle(
                        color: UiWhiteColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'san-serif'),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text("terms of service and privacy policy",
                    style: TextStyle(
                        color: UiWhiteColor,
                        fontSize: 16.0,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'san-serif'),),
                ),
                SizedBox(
                  height: 12,
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
                            fontSize: 16, color: UiWhiteColor)),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('icons/facebbok.png',),
                  decoration: BoxDecoration(
                      color: UiWhiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('icons/google.png'),
                  decoration: BoxDecoration(
                      color: UiWhiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('icons/google.png'),
                  decoration: BoxDecoration(
                      color: UiWhiteColor,
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
                    Text('Have an account?',
                        style: TextStyle(
                            fontSize: 16, color: UiWhiteColor)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text('login',
                          style: TextStyle(
                              fontSize: 16, color: UiGreenColor, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
]),
              ],
            ),
          ),
        )
    );
  }
}
