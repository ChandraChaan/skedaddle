import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:skedaddle/Common/Helpers.dart';
import 'package:skedaddle/Domain/FrontEvents_dataClass.dart';
import 'package:skedaddle/Domain/Login_dataClass.dart';
import 'package:skedaddle/Network/NetworkDataClass.dart';
import 'package:skedaddle/Network/NetworkStrings.dart';

class FrontEventsAPIModal {
  final String token;

  FrontEventsAPIModal({this.token});

  Map<String, dynamic> toJsonResources() {
    // return {"username": "${username}", "password": "${pasword}"};
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        // this post methode but we need to send data in params only.
        extendedUrl: Helpers.alleventsList,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
        isCookie: false,
        param: jsonEncode(toJsonResources()),
        requestType: NetworkString.requestGet);
  }

  fromJson(val) => FrontEventsModal.fromJson(val);

  withError(error) => FrontEventsModal.withError(error);

  fromJsonError(valError) => FrontEventsModal.fromJsonError(valError);
}
