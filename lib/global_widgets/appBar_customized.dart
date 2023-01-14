import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../utils/app_images.dart';

class AppBarCustomized {
  static AppBar appBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      leading: MediaQuery.of(context).size.width < 600 ? const Icon(Icons.menu) : const SizedBox(),
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
              Image.asset(
                AppImages.logoGenone,
                height: 50,
              ),
              MediaQuery.of(context).size.width < 600 ?
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 40,
                ),
              ) : Row(
                children: [
                  TextButton(onPressed: () {}, child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),)),
                  TextButton(onPressed: () {}, child: Text("|", style: TextStyle(color: Colors.white, fontSize: 20),)),
                  TextButton(onPressed: () {
                    Get.toNamed(AppRoutes.registrationPage);
                  }, child: Text("Cadastrar-se", style: TextStyle(color: Colors.white, fontSize: 20),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
