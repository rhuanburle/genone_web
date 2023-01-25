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
      page: () => RegistrationPage(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}