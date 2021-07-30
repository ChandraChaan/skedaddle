import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:skedaddle/Common/Helpers.dart';
import 'package:skedaddle/Domain/Login_dataClass.dart';
import 'package:skedaddle/Domain/Signup_dataClass.dart';
import 'package:skedaddle/Network/NetworkDataClass.dart';
import 'package:skedaddle/Network/NetworkStrings.dart';

class SignupAPIModal {
  final String firstName;
  final String lastName;
  final String email;
  final String pasword;
  final int term;

  SignupAPIModal(
      {this.firstName, this.lastName, this.email, this.pasword, this.term = 1});

  Map<String, dynamic> toJsonResources() {
    // return {"username": "${username}", "password": "${pasword}"};
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        // this post methode but we need to send data in params only.
        extendedUrl: Helpers.register +
            '?first_name=${firstName}&last_name=${lastName}&email=${email}&password=${pasword}&term=1',
        options: Options(
          headers: {"content-type": "application/json"},
        ),
        isCookie: false,
        param: jsonEncode(toJsonResources()),
        requestType: NetworkString.requestPost);
  }

  fromJson(val) => SignupModal.fromJson(val);

  withError(error) => SignupModal.withError(error);

  fromJsonError(valError) => SignupModal.fromJsonError(valError);
}
