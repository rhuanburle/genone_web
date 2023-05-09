import 'package:genone_web_flutter/modules/register_user/registerUserBinding.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_page.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
import '../modules/registration/registration_binding.dart';
import '../modules/registration/registration_page.dart';
import 'app_routes.dart';

class AppPages {

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.registrationPage,
      page: () => const RegistrationPage(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.registerUserPage,
      page: () => const RegisterUserPage(),
      binding: RegisterUserBinding(),
    ),
  ];
}