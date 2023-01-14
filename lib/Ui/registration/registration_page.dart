import 'package:flutter/material.dart';
import 'package:genone_web_flutter/Ui/registration/registration_controller.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:get/get.dart';

import '../../global_widgets/appBar_customized.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: Center(
        child: GetBuilder<RegistrationController>(builder: (ctrl) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.6,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.6,
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
                              const Text("Bem vindo a tela de registro",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              const SizedBox(height: 10),
                              const Text(
                                  "Aqui você pode se cadastrar para futuros orçamentos",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.center),
                            ],
                          ))),
                  Expanded(
                    flex: 2,
                    child: Obx(() {
                      return Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ctrl.registerCountPage == 1 ?
                            Column(
                              children: [
                                TextField(
                                  controller: ctrl.nameController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: 'Nome',
                                  ),
                                ),
                                const SizedBox(height: 10),
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
                                const SizedBox(height: 10),
                                TextField(
                                  obscureText: true,
                                  controller: ctrl.confirmPasswordController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: 'Confirmar Senha',
                                  ),
                                ),
                              ],
                            ) :
                                Column(
                                  children: [
                                    TextField(
                                      controller: ctrl.phoneController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'Telefone',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      controller: ctrl.zipCodeController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'CEP',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      controller: ctrl.streetAddressController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'Nome da rua',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      controller: ctrl.cityController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'Cidade',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      controller: ctrl.stateController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        labelText: 'Estado',
                                      ),
                                    ),
                                  ],
                                ),
                            const SizedBox(height: 10),
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
                                ctrl.register();
                              }, child: ctrl.registerCountPage != 1 ? const Text("Cadastrar") : const Text("Próximo")),
                            )
                          ],
                        ),
                      );
                    }),
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
