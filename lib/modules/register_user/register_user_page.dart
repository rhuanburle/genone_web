import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_controller.dart';
import 'package:get/get.dart';

class RegisterUserPage extends StatelessWidget {
  RegisterUserPage({Key? key}) : super(key: key);
  final ctrl = Get.find<RegisterUserController>();


  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints(maxWidth: 1366),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Para prosseguir, por favor preencha os campos abaixo para finalizar o cadastro:',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RobotoMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: widthMedia < 1145 ? 550 : null,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(73, 174, 228, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("* indica um campo requerido",
                          style: TextStyle(color: Colors.red)),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nome *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.lastNameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Sobrenome *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.companyController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Empresa/Instituição',
                              ),
                            ),
                          ),
                          Obx(() {
                            return SizedBox(
                              width: 500,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: widthMedia >= 580 ? 300 : 200,
                                    child: TextField(
                                      controller: ctrl.cnpjCpfController,
                                      inputFormatters: ctrl.isCpf.value ? [
                                        ctrl.maskCpf
                                      ] : [ctrl.maskCnpj],
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'CNPJ/CPF *',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Text("CNPJ",
                                          style: TextStyle(
                                              color: ctrl.isCpf.value ? Colors
                                                  .black : Colors.blue,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Switch(value: ctrl.isCpf.value,
                                        onChanged: (value) =>
                                        ctrl.isCpf.value = value,
                                        activeColor: Colors.blue,
                                        inactiveTrackColor: Colors.blue,
                                        inactiveThumbColor: Colors.blue,
                                      ),
                                      Text("CPF",
                                          style: TextStyle(
                                              color: ctrl.isCpf.value ? Colors
                                                  .blue : Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.phoneController,
                              inputFormatters: [ctrl.maskPhone],
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Telefone *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.cepController,
                              inputFormatters: [ctrl.maskCep],
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'CEP *',
                              ),
                              onChanged: (value) {
                                if (value.length == 9) {
                                  ctrl.searchCep();
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.addressController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Rua/Lagradouro *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.districtController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Bairro *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.cityController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Cidade *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.stateController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Estado *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.countryController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Pais *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              controller: ctrl.complementController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Complemento',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1000,
                            child: TextField(
                              controller: ctrl.commentsController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Observações adicionais',
                              ),
                            ),
                          ),
                          Obx(() {
                            return Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                SizedBox(
                                  width: widthMedia < 1145 ? 500 : null,
                                  child: const Text(
                                      "Métodos de pagamento utilizados:",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      const Text("Pix"),
                                      Checkbox(
                                          value: ctrl.isPix.value,
                                          onChanged: (value) {
                                            ctrl.isPix.value = value!;
                                          }),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: Row(
                                    children: [
                                      const Text("Boleto"),
                                      Checkbox(
                                          value: ctrl.isBankSlip.value,
                                          onChanged: (value) {
                                            ctrl.isBankSlip.value = value!;
                                          }),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                  child: Row(
                                    children: [
                                      const Text("Transferência"),
                                      Checkbox(
                                          value: ctrl.isBankTransfer.value,
                                          onChanged: (value) {
                                            ctrl.isBankTransfer.value = value!;
                                          }),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 40),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(73, 174, 228, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                      onPressed: () async {
                        await ctrl.sendForm(context);
                      },
                      child: const Text('Finalizar Cadastro')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
