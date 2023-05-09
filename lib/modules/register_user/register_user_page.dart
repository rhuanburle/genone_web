import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: widthMedia > 1366 ? 1366 : widthMedia,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Para prosseguir, por favor preencha os campos abaixo para finalzar o cadastro:',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RobotoMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
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
                        children: const [
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nome *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Sobrenome *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Empresa/Instituição',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'CNPJ/CPF *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Telefone *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'CEP *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Rua/Lagradouro *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Bairro *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Cidade *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Estado *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Pais *',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 500,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Observação',
                              ),
                            ),
                          ),
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
                  child: ElevatedButton(onPressed: () {},
                      child: const Text('Finalizar Cadastro')
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
