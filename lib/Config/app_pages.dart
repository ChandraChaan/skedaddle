import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:skedaddle/Application/Binding/MainBinding.dart';
import 'package:skedaddle/Presantation/adminPage.dart';
import 'package:skedaddle/Presantation/adminPage.dart';
import 'package:skedaddle/Presantation/events/choosePackage.dart';
import 'package:skedaddle/Presantation/events/events.dart';
import 'package:skedaddle/Presantation/events/register.dart';
import 'package:skedaddle/Presantation/events/registerNow.dart';
import 'package:skedaddle/Presantation/events/registrationCart.dart';
import 'package:skedaddle/Presantation/events/successPayment.dart';
import 'package:skedaddle/Presantation/events/upcomingEvents.dart';
import 'package:skedaddle/Presantation/forgetPassword.dart';
import 'package:skedaddle/Presantation/getStarted/getStarted.dart';
import 'package:skedaddle/Presantation/homePage.dart';
import 'package:skedaddle/Presantation/login.dart';
import 'package:skedaddle/Presantation/profile.dart';
import 'package:skedaddle/Presantation/signup.dart';
import 'package:skedaddle/Presantation/widgets/connections.dart';
import 'package:skedaddle/Presantation/widgets/mainEvents.dart';

part 'app_route.dart';

class AppPages {
  static const INITIAL = Routes.homescreen;
  static final routes = [
    GetPage(name: Routes.DEFAULT, page: () => HomeScreen()),
    GetPage(name: Routes.getStartedImage, page: () => GetStartedImage()),
    GetPage(name: Routes.register, page: () => Register()),
    GetPage(
        name: Routes.login, page: () => loginPage(), binding: MainBinding()),
    GetPage(name: Routes.regCart, page: () => RegistrationCart()),
    GetPage(name: Routes.upcomingEvents, page: () => UpcomingEventsInfo()),
    GetPage(name: Routes.signup, page: () => SignUp(), binding: MainBinding()),
    GetPage(name: Routes.forgetPassword, page: () => forgetPassword()),
    GetPage(name: Routes.eventsPage, page: () => EventsPage()),
    GetPage(name: Routes.registernow, page: () => RegisterNow()),
    GetPage(name: Routes.successpayment, page: () => SuccessPayment()),
    GetPage(name: Routes.profile, page: () => Profile()),
    GetPage(
        name: Routes.homescreen,
        page: () => HomeScreen(),
        binding: MainBinding()),
    GetPage(name: Routes.connections, page: () => Connections()),
    GetPage(name: Routes.mainEvents, page: () => mainEvents()),
    GetPage(name: Routes.AdminPage, page: () => AdminPage()),
    GetPage(name: Routes.choosePackagepage, page: () => choosePackagepage()),
  ];
}
