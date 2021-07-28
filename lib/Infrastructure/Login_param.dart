import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:skedaddle/Common/Helpers.dart';
import 'package:skedaddle/Domain/Login_dataClass.dart';
import 'package:skedaddle/Network/NetworkDataClass.dart';
import 'package:skedaddle/Network/NetworkStrings.dart';

class LoginAPIModal {
  final String username;
  final String pasword;

  LoginAPIModal({this.pasword,this.username});
  Map<String, dynamic> toJsonResources() {
    // return {"username": "${username}", "password": "${pasword}"};
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        // this post methode but we need to send data in params only.
        extendedUrl: Helpers.login+'?email=${username}&password=${pasword}',
        // extendedUrl: Helpers.login+'?email=jonedev.18@gmail.com&password=1234567',
        options: Options(
          headers: {"content-type": "application/json"},
        ),
        isCookie: false,
        param: jsonEncode(toJsonResources()),
        requestType: NetworkString.requestPost);
  }

  fromJson(val) => LoginModal.fromJson(val);

  withError(error) => LoginModal.withError(error);

  fromJsonError(valError) => LoginModal.fromJsonError(valError);
}
