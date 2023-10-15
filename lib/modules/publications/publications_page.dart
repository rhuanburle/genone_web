import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/global_widgets/footer.dart';
import 'package:genone_web_flutter/modules/publications/publications_controller.dart';
import 'package:get/get.dart';

class PublicationsPage extends StatelessWidget {
  const PublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<PublicationsController>();
    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1200),
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    const AutoSizeText(
                      "CASOS DE SUCESSO E PUBLICAÇÕES DE CLIENTES GENONE",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 30),
                    for (int i = 0; i < ctrl.urls.length; i++)
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  ctrl.texts[i],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      ctrl.goToUrl(ctrl.urls[i]);
                                    },
                                    child: Text(
                                      ctrl.urls[i].toString(),
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    )),
                                const SizedBox(height: 30),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
