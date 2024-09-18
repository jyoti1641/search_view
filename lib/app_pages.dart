import 'package:get/get.dart';
import 'package:search_view/formpagedata.dart';
import 'package:search_view/login_screen.dart';
import 'package:search_view/otp_screen.dart';
import 'package:search_view/signin_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/';

  static final routes = [
    GetPage(
        name: '/login',
        page: () => LoginPage(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/signup',
        page: () => SignupPage(),
        transition: Transition.leftToRight),
    GetPage(
        name: '/otp',
        page: () => OTPScreen(),
        transition: Transition.rightToLeft),
  ];
}
