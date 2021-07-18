import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';

class forgetPassword extends StatefulWidget {
  @override
  _forgetPasswordState createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Forget Password",),
            ),
            Text("Enter your email address below to reset password.",),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',

                ),
              ),
            ),


            Padding(
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
            ),
          ],
        ),
      )
    );
  }
}
