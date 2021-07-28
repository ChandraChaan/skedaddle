
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Loader.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Domain/Login_dataClass.dart';
import 'package:skedaddle/Infrastructure/Login_param.dart';
import 'package:skedaddle/Provider/SkadaddleAdapter.dart';


class LoginController extends GetxController {
  LoginController({this.skadaddlerepository});

  /// inject repo abstraction dependency
  final ISkadaddleRepository skadaddlerepository;
  String userAccessToken = '';
  String userTokenType = '';
  String expiresIn = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    print('The build method is done. '
        'Your controller is ready to call dialogs and SnackBars');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }


  callAPI(String username, String password) {
    Loader.show();
    // CircularProgressIndicator();
    skadaddlerepository.dynamic(LoginAPIModal(username: username, pasword: password)).then((data) {
      Navigator.of(Get.context, rootNavigator: true).pop('dialog');
      userAccessToken = data['access_token'];
      userTokenType = data['token_type'];
      expiresIn = data['expires_in'].toString();
      Get.toNamed(Routes.eventsPage);
    }, onError: (err) {
      Navigator.of(Get.context, rootNavigator: true).pop('dialog');
      Get.snackbar(
        "${err}".toString(),
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
      // change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onDetached() {
    // implement onDetached
  }

  @override
  void onInactive() {
    // implement onInactive
  }

  @override
  void onPaused() {
    // implement onPaused
  }

  @override
  void onResumed() {
    // implement onResumed
  }
}
