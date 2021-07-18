import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:skedaddle/Presantation/events/register.dart';
import 'package:skedaddle/Presantation/login.dart';
import 'package:skedaddle/Presantation/signup.dart';

part 'app_route.dart';
class AppPages {
  static const INITIAL = Routes.DEFAULT;
  static final routes = [
    GetPage(
        name: Routes.DEFAULT,
        page: () => Register()),
  ];
}