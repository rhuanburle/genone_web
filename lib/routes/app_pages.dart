import 'package:genone_web_flutter/Ui/registration/registration_binding.dart';
import 'package:genone_web_flutter/Ui/registration/registration_page.dart';
import 'package:get/route_manager.dart';
import '../Ui/home/home_binding.dart';
import '../Ui/home/home_page.dart';
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
  ];
}