
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:skedaddle/Application/Controller/FrontEventsController.dart';
import 'package:skedaddle/Application/Controller/LoginController.dart';
import 'package:skedaddle/Application/Controller/SignupController.dart';
import 'package:skedaddle/Provider/SkadaddleAdapter.dart';
import 'package:skedaddle/Provider/SkadaddleProvider.dart';
import 'package:skedaddle/Provider/SkadaddleRepository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISkadaddleProvider>(() => SkadaddleProvider());

    Get.lazyPut<ISkadaddleRepository>(() => SkadaddleRepository(provider: Get.find()));
    Get.lazyPut(() => LoginController(skadaddlerepository: Get.find()));
    Get.lazyPut(() => SignupController(skadaddlerepository: Get.find()));
    Get.lazyPut(() => FrontEventsController(skadaddlerepository: Get.find()));


  }
}
