import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/appBar_customized.dart';
import '../../utils/app_images.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightMedia = MediaQuery.of(context).size.height;
    final widthMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: Center(
        child: GetBuilder<LoginController>(builder: (ctrl) {
          return Container(
            height: widthMedia >= 700 ? heightMedia * 0.6 : heightMedia * 0.8,
            width: widthMedia >= 700 ?  widthMedia * 0.6 : widthMedia * 0.9,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(73, 174, 228, 1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          color: const Color.fromRGBO(73, 174, 228, 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.logoGenoneSmall, height: 200,
                                width: 200,),
                              const Text("Login", textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24)),
                              const SizedBox(height: 10),

                            ],
                          ))),
                  Expanded(
                    flex: 2,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                TextField(
                                  controller: ctrl.emailController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: 'Email',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  obscureText: true,
                                  controller: ctrl.passwordController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: 'Senha',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(73, 174, 228, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    ctrl.login();
                                  }, child: const Text("Entrar")),
                            )
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
