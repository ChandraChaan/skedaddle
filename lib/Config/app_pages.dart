import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:skedaddle/Presantation/events/register.dart';
import 'package:skedaddle/Presantation/events/registerNow.dart';
import 'package:skedaddle/Presantation/events/successPayment.dart';
import 'package:skedaddle/Presantation/getStarted/getStarted.dart';
import 'package:skedaddle/Presantation/login.dart';
import 'package:skedaddle/Presantation/signup.dart';

part 'app_route.dart';
class AppPages {
  static const INITIAL = Routes.DEFAULT;
  static final routes = [
    GetPage(
        name: Routes.DEFAULT,
        page: () => loginPage()),
    GetPage(
        name: Routes.getStartedImage,
        page: () => GetStartedImage()),
    GetPage(
        name: Routes.register,
        page: () => SuccessPayment()),
    GetPage(
        name: Routes.login,
        page: () => loginPage()),
  ];
}