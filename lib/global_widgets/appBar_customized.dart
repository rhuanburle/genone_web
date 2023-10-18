import 'package:flutter/material.dart';
import 'package:genone_web_flutter/utils/global_variables.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../routes/app_routes.dart';
import '../utils/app_images.dart';

GlobalVariables globalVariables = Get.put(GlobalVariables());
final storage = GetStorage();
RxBool isAuth = false.obs;
String email = "";

class AppBarCustomized {
  static AppBar appBar(BuildContext context) {

    if(storage.read('auth') != null) {
      isAuth.value = true;
      email = storage.read('userEmail')!;
    } else {
      isAuth.value = false;
    }

    return AppBar(
      elevation: 1,
      leading: MediaQuery.of(context).size.width < 600
          ? const Icon(Icons.menu)
          : const SizedBox(),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide.none),
          color: Color.fromRGBO(55, 156, 210, 1),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.homePage);
                },
                child: Image.asset(
                  AppImages.logoGenone,
                  height: 50,
                ),
              ),
              // MediaQuery.of(context).size.width < 600
              //     ? IconButton(
              //         onPressed: () {},
              //         icon: const Icon(
              //           Icons.menu,
              //           color: Colors.white,
              //           size: 40,
              //         ),
              //       )
              //     : Obx(() {
              //         return isAuth.value == false
              //             ? Row(
              //                 children: [
              //                   TextButton(
              //                       onPressed: () {
              //                         Get.toNamed(AppRoutes.loginPage,
              //                             arguments: false);
              //                       },
              //                       child: const Text(
              //                         "Login",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                       )),
              //                   const Text(
              //                     "|",
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 20),
              //                   ),
              //                   TextButton(
              //                       onPressed: () {
              //                         Get.toNamed(AppRoutes.registrationPage);
              //                       },
              //                       child: const Text(
              //                         "Cadastrar-se",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                       )),
              //                 ],
              //               )
              //             : Row(
              //                 children: [
              //                   Text(
              //                     "Olá, $email ",
              //                     style: const TextStyle(
              //                         color: Colors.white, fontSize: 20),
              //                   ),
              //                   const Text(
              //                     "| ",
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 20),
              //                   ),
              //                   TextButton(
              //                       onPressed: () {
              //                         isAuth.value = false;
              //                         // Get.toNamed(AppRoutes.homePage);
              //                       },
              //                       child: const Text(
              //                         "Orçamentos ",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                       )),
              //                   const Text(
              //                     "| ",
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 20),
              //                   ),
              //                   TextButton(
              //                       onPressed: () {
              //                         isAuth.value = false;
              //                         // Get.toNamed(AppRoutes.homePage);
              //                       },
              //                       child: const Text(
              //                         "Cadastro ",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                       )),
              //                   const Text(
              //                     "| ",
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 20),
              //                   ),
              //                   TextButton(
              //                       onPressed: () {
              //                         isAuth.value = false;
              //                         Get.offAndToNamed(AppRoutes.homePage);
              //                       },
              //                       child: const Text(
              //                         "Sair",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 20),
              //                       )),
              //                 ],
              //               );
              //       }),
            ],
          ),
        ),
      ),
    );
  }
}
