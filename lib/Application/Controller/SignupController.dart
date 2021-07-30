import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Common/Loader.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Domain/Login_dataClass.dart';
import 'package:skedaddle/Infrastructure/Login_param.dart';
import 'package:skedaddle/Infrastructure/Signup_param.dart';
import 'package:skedaddle/Provider/SkadaddleAdapter.dart';

class SignupController extends GetxController {
  SignupController({this.skadaddlerepository});

  /// inject repo abstraction dependency
  final ISkadaddleRepository skadaddlerepository;

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

  callAPI({String fs, String ln, String e, String pw}) {
    Loader.show();
    // CircularProgressIndicator();
    skadaddlerepository
        .dynamic(SignupAPIModal(firstName: fs, lastName: ln, email: e, pasword: pw))
        .then((data) {
      Navigator.of(Get.context, rootNavigator: true).pop('dialog');
      Get.toNamed(Routes.login);
      Get.snackbar(
        "Register successfully".toString(),
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
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
