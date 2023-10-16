import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/global_vision.dart';
import 'package:genone_web_flutter/global_widgets/appBar_customized.dart';
import 'package:genone_web_flutter/global_widgets/footer.dart';
import 'package:genone_web_flutter/modules/oligonucleotideos_info/oligonucleotideos_Info_controller.dart';
import 'package:genone_web_flutter/modules/oligonucleotideos_info/widgets/vision_global_widget.dart';
import 'package:genone_web_flutter/utils/app_images.dart';
import 'package:genone_web_flutter/utils/app_text.dart';
import 'package:get/get.dart';

class OligonucleotideosInfoPage extends StatelessWidget {
  const OligonucleotideosInfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<OligonucleotideosInfoController>();
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
                      "SÍNTESE DE OLIGONUCLEOTÍDEOS",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        "PADRÕES DE QUALIDADE DE OLIGOS CUSTOMIZADOS.",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const AutoSizeText(
                      AppText.textQualityStandartsCustomized,
                      maxLines: 10,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        "VISÃO GLOBAL",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              for(GlobalVision item in ctrl.globalVisionList)
                                VisionGlobalWidget(item: item),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                              child: Divider(color: Colors.grey)),
                          const AutoSizeText(
                            """Um sistema de controle de qualidade rigoroso garante que você pode esperar oligonucleotídeos do mais alto padrão. Antes da síntese, todos os produtos químicos são verificados para atender aos nossos padrões de qualidade. Durante a síntese de oligo totalmente automatizada, todas as etapas da síntese são monitoradas por várias funções de controle em nossos sintetizadores de DNA. Desta forma podemos garantir a eficiência do acoplamento da síntese para atender às nossas demandas.

                              A síntese  de nossos oligos é garantida por rigoroso controle de qualidade. Todos os oligos são rotineiramente analisados ​​por medição de densidade óptica (OD). Além disso, os oligos são analisados ​​por eletroforese em gel e espectrometria de massa por cromatografia líquida (LCMS). Se os oligos não atenderem aos nossos requisitos, eles serão ressintetizados. O resultado de nosso rigoroso processo de controle de qualidade é um produto do mais alto padrão. Todos os oligos são fornecidos com nossa folha de especificações do produto, que inclui: % de conteúdo de GC, rendimento em nmol e μgram, OD, temperatura de fusão e peso molecular (MW)."""
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        "INFORMAÇÕES SOBRE PEDIDOS.",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AutoSizeText(
                            "E-mail",
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const AutoSizeText(
                            'Baixe nosso formulário de pedido em formato Excel e envie preenchido para: vendas@genone.com.br',
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                            ),
                              onPressed: () {
                            ctrl.goDownloadForm();
                          }, child: const Text("Baixar Formulário clicando aqui...", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),)),
                          const SizedBox(height: 30),
                          const AutoSizeText(
                            "Agenda de entrega",
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                           const AutoSizeText(
                            AppText.textOligonucleotideosPageDeliverySchedule,
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const AutoSizeText(
                            "Envio e manipulação",
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const AutoSizeText(
                            'Os detalhes de envio e manuseio dependem em grande parte do endereço do destinatário. Entre em contato conosco para obter mais informações.',
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const AutoSizeText(
                            "Serviço pré-pago (carta de crédito) Oligo",
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const AutoSizeText(
                            'Com o nosso serviço oligo pré-pago, tornamos os pedidos de oligo fáceis. A carta de crédito pode ser facilmente criada em uma conta em nosso sistema. Os Oligos podem então ser encomendados imediatamente, eliminando possíveis atrasos devido à autorização de compra. Entre em contato com a GenOne para obter mais informações.',
                            maxLines: 10,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
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
  }
}
