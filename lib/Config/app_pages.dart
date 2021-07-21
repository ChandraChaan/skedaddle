import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:skedaddle/Presantation/events/events.dart';
import 'package:skedaddle/Presantation/events/register.dart';
import 'package:skedaddle/Presantation/events/registerNow.dart';
import 'package:skedaddle/Presantation/events/registrationCart.dart';
import 'package:skedaddle/Presantation/events/successPayment.dart';
import 'package:skedaddle/Presantation/events/upcomingEvents.dart';
import 'package:skedaddle/Presantation/forgetPassword.dart';
import 'package:skedaddle/Presantation/getStarted/getStarted.dart';
import 'package:skedaddle/Presantation/login.dart';
import 'package:skedaddle/Presantation/signup.dart';

part 'app_route.dart';
class AppPages {
  static const INITIAL = Routes.eventsPage;
  static final routes = [
    GetPage(
        name: Routes.DEFAULT,
        page: () => loginPage()),
    GetPage(
        name: Routes.getStartedImage,
        page: () => GetStartedImage()),
    GetPage(
        name: Routes.register,
        page: () => Register()),
    GetPage(
        name: Routes.login,
        page: () => loginPage()),
    GetPage(
        name: Routes.regCart,
        page: () => RegistrationCart()),
    GetPage(
        name: Routes.upcomingEvents,
        page: () => UpcomingEventsInfo()),
    GetPage(
        name: Routes.signup,
        page: () => SignUp()),
    GetPage(
        name: Routes.forgetPassword,
        page: () => forgetPassword()),
    GetPage(
        name: Routes.eventsPage,
        page: () => EventsPage()),

  ];
}