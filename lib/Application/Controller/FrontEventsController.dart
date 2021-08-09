import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skedaddle/Application/Controller/LoginController.dart';
import 'package:skedaddle/Common/Loader.dart';
import 'package:skedaddle/Config/app_pages.dart';
import 'package:skedaddle/Domain/FrontEvents_dataClass.dart';
import 'package:skedaddle/Infrastructure/FrontEvents_param.dart';
import 'package:skedaddle/Provider/SkadaddleAdapter.dart';

class FrontEventsController extends SuperController<FrontEventsModal> {
  FrontEventsController({this.skadaddlerepository});

  /// inject repo abstraction dependency
  final ISkadaddleRepository skadaddlerepository;
final LoginController loginController = Get.find();
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

  callAPI() {
    // Loader.show();
    // CircularProgressIndicator();
    change(null, status: RxStatus.loading());
    print('it trying to hit');
    skadaddlerepository
        .dynamic(FrontEventsAPIModal(token: loginController.userAccessToken))
        .then((data) {
      print('it done to hit');
      change(data, status: RxStatus.success());
    }, onError: (err) {
      print('it error to hit');
      change(null, status: RxStatus.error(err.toString()));
      // change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

}
