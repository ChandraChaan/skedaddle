import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/textField.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("Forget Password",
                  style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'san-serif'),),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120.0),
                child: Text("Enter your email address below to reset password.",style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.normal,fontFamily: 'san-serif'),),
              ),
              SizedBox(
                height: 66.0,
              ),
              /*Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',

                  ),
                ),
              ),
*/
              UiFormText(
                  hint: 'Email',
                  label: 'email',
                  controllercc: emailControl,
                  normalFeild: true,
                  readonlyye: false),
              SizedBox(
                height: 20.0,
              ),
              /*Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width ,
                  child: themeButton(
                    name:  'Reset Password',
                    onClick: () {


                    },
                  ),
                ),
              ),*/
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
      )
    );
  }
}
