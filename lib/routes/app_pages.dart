import 'package:genone_web_flutter/modules/genes_info/genes_info_binding.dart';
import 'package:genone_web_flutter/modules/genes_info/genes_info_page.dart';
import 'package:genone_web_flutter/modules/home_user/home_user_binding.dart';
import 'package:genone_web_flutter/modules/home_user/home_user_page.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_binding.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_page.dart';
import 'package:genone_web_flutter/modules/oligonucleotideos_info/oligonucleotideos_Info_binding.dart';
import 'package:genone_web_flutter/modules/oligonucleotideos_info/oligonucleotideos_info_page.dart';
import 'package:genone_web_flutter/modules/plasmideos_available/plasmideos_available_binding.dart';
import 'package:genone_web_flutter/modules/plasmideos_available/plasmideos_available_page.dart';
import 'package:genone_web_flutter/modules/privacy_policy/privacy_policy_binding.dart';
import 'package:genone_web_flutter/modules/privacy_policy/privacy_policy_page.dart';
import 'package:genone_web_flutter/modules/publications/publications_binding.dart';
import 'package:genone_web_flutter/modules/publications/publications_page.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_binding.dart';
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
      page: () => RegisterUserPage(),
      binding: RegisterUserBinding(),
    ),
    GetPage(
        name: AppRoutes.homeUserPage,
        page: () => const HomeUserPage(),
        binding: HomeUserBinding(),
    ),
    GetPage(name: AppRoutes.newQuotationPage,
        page: () => const NewQuotationPage(),
        binding: NewQuotationBinding(),
    ),
    GetPage(name: AppRoutes.publicationsPage,
        page: () => const PublicationsPage(),
        binding: PublicationsBinding(),
    ),
    GetPage(name: AppRoutes.privacyPolicyPage,
        page: () => const PrivacyPolicyPage(),
        binding: PrivacyPolicyBinding(),
    ),
    GetPage(name: AppRoutes.genesInfoPage,
        page: () => const GenesInfoPage(),
        binding: GenesInfoBinding(),
    ),
    GetPage(name: AppRoutes.oligonucleotideosInfoPage,
        page: () => const OligonucleotideosInfoPage(),
        binding: OligonucleotideosInfoBinding(),
    ),
    GetPage(name: AppRoutes.plasmideosAvailablePage,
        page: () => const PlasmideosAvailablePage(),
        binding: PlasmideosAvailableBindings(),
    ),
  ];
}