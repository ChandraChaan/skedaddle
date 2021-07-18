
import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Presantation/profile.dart';
import 'package:skedaddle/Presantation/signup.dart';

import 'forgetPassword.dart';
class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final remark = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*Container(
          constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Image/background.png"),
                fit: BoxFit.cover)),
        child: TextField(decoration: InputDecoration(fillColor: Colors.amber,filled: true),)
          ),*/
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Login",textAlign: TextAlign.left,),
          ),
          Text("Please sign in to continue",),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width ,
              child: themeButton(
                name:  'Login',
                onClick: () {


                },
              ),
            ),
          ),
          TextButton(style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16),
          ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => forgetPassword()),
                );
              }, child: const Text('Forget Password ?')),
          Text("OR"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Sign in with"),


          ),
          TextButton(style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16),
          ),
              onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );}, child: const Text('Sign up'),),


          TextButton(style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16),
          ),
            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );}, child: const Text('Profile'),),
        ],
      ),
    );
  }
}








