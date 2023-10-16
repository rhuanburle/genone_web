import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/global_widgets/footer.dart';
import 'package:genone_web_flutter/modules/genes_info/genes_info_controller.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:genone_web_flutter/utils/app_text.dart';
import 'package:get/get.dart';

class GenesInfoPage extends StatelessWidget {
  const GenesInfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetX<GenesInfoController>(
      init: GenesInfoController(),
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBarCustomized.appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        const AutoSizeText(
                          "SÍNTESE DE GENES",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const AutoSizeText(
                          "A GenOne oferece os melhores serviços de síntese de genes do mercado, com a garantia de um atendimento rápido, de ótima qualidade e de poder contar com o suporte de profissionais com doutorado na área.\n\nGanhe tempo para o que realmente é importante, os nossos clientes recebem os seus pedidos em prazos a partir de 15 dias úteis, dependendo da complexidade do seu gene.",
                          maxLines: 10,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image: AssetImage(AppImages.sinteseGenes),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        ctrl.isActiviButtonOne.value
                                            ? Colors.blue
                                            : Colors.grey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    ctrl.swapGenesScreen(1);
                                  },
                                  child: const Text("Como Funciona?")),
                            ),
                            SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        ctrl.isActiviButtonOne.value
                                            ? Colors.grey
                                            : Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    ctrl.swapGenesScreen(2);
                                  },
                                  child: const Text("Como pedir uma cotação?")),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            ctrl.isActiviButtonOne.value ? AppText.textGenesPageHowItWorks : AppText.textGenesPageHowRequestQuote,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const AutoSizeText(
                          'Clientes GenOne que optarem por contratar os serviços de subclonagem podem escolher um dos vetores de expressão que temos em estoque sem pagar nada a mais por isso.',
                          maxLines: 10,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
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
      },
    );
  }
}
