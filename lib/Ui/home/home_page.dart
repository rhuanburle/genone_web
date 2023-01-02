import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../global_widgets/appBar_customized.dart';
import '../../utils/app_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized.appBar(),
      bottomSheet: AppBarCustomized.bootomSheet(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: const Border(top: BorderSide.none),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.white,
                      Colors.blue.shade800,
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(200),
                  ),
                ),
                height: 300,
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(),
                    ),
                    Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AutoSizeText(
                              "Estamos sempre\nprontos para ajudar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontStyle: FontStyle.italic),
                              maxLines: 2,
                            ),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                width: 400,
                                child: const AutoSizeText(
                                    "Entre em contato conosco, nossa equipe esta sempre em prontidão para atende-los",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic),
                                    maxLines: 2)),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadowColor: Colors.black,
                                ),
                                child: Text(
                                  "Fale conosco",
                                  style: TextStyle(
                                    color: Colors.blue.shade800,
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.homeBiomoleculas),
                      fit: BoxFit.cover,
                      // fit: BoxFit.cover,
                    ),
                    border: Border(top: BorderSide.none),
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 300,
                          // color: Colors.blue.shade100,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                    """Serviço essencial para estudar a função de genes ou para produção de recombinantes.\n\n- Sintetize Genes ou Regiões Reguladoras\n- Serviço completo de síntese de genes\n- Sequencias prontas para uso sem complicação\n- Otimização de códons gratuita\n- Subclonagens para vetores indicados pelos clientes\n- Maxi e Midi Preps livres de endotoxinas""",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                  ),
                                  maxLines: 20),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 300,
                          // color: Colors.blue.shade200,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 300,
                          // color: Colors.blue.shade300,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 300,
                          // color: Colors.blue.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
