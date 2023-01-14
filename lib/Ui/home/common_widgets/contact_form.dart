import 'package:flutter/material.dart';
import 'package:genone_web_flutter/Ui/home/home_controller.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:get/get.dart';

class ContactForm extends StatelessWidget {
  ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery
        .of(context)
        .size
        .width;
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Container(
        // height: 300,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
              children: [
                Row(
                    children: [
                      widthMedia > 1000 ?
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn,
                        width: 500,
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(AppImages.genone2Home),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black
                                .withOpacity(0.5), BlendMode.darken),
                          ),
                        ),
                      ) : Container(),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 500,
                                color: Colors.white,
                                child: TextField(
                                  controller: ctrl.nameController,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(),
                                    labelText: 'Seu nome',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 500,
                                color: Colors.white,
                                child: TextField(
                                  controller: ctrl.emailController,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder(),
                                    labelText: 'Seu e-mail',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 500,
                                color: Colors.white,
                                child: TextField(
                                  controller: ctrl.phoneController,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.phone),
                                    border: OutlineInputBorder(),
                                    labelText: 'Telefone',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 500,
                                color: Colors.white,
                                child: TextField(
                                  controller: ctrl.subjectController,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.edit_note_outlined),
                                    border: OutlineInputBorder(),
                                    labelText: 'Assunto',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 500,
                                color: Colors.white,
                                child: TextField(
                                  controller: ctrl.messageController,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.message),
                                    labelText: 'Sua mensagem',
                                    border: OutlineInputBorder(),
                                  ),
                                  maxLines: 5,
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    ctrl.sendEmail();
                                  },
                                  child: const Text('Enviar mensagem'),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                (widthMedia < 1000 && widthMedia > 750) ||
                                    widthMedia > 1250 ?
                                const Text("GenOne Soluções em Biotecnologia") :
                                const Text("GenOne Soluções\nem Biotecnologia"),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: const [
                                Icon(Icons.phone),
                                Text("Tel: (21) 3285-9105"),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: const [
                                Icon(Icons.email),
                                Text(" Mensagem:", style: TextStyle(
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Text("Email: vendas@genone.com.br"),
                            const SizedBox(height: 200),
                          ],
                        ),
                      )
                    ]
                ),
              ]
          )
      );
    });
  }
}
