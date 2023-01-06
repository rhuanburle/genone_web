import 'dart:typed_data';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../global_widgets/appBar_customized.dart';
import '../../utils/app_images.dart';
import 'common_widgets/production_biomolecules_bloc.dart';
import 'common_widgets/service_multiomica_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomized.appBar(),
      // bottomSheet: AppBarCustomized.bootomSheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide.none),
                color: Color.fromRGBO(73, 174, 228, 1),
                image: DecorationImage(
                  image: AssetImage(AppImages.personHomeCiencia),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                ),
              ),
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AutoSizeText(
                      "Estamos sempre\nprontos para ajudar",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoMono',
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        width: 400,
                        child: const AutoSizeText(
                            "Entre em contato conosco, nossa equipe esta sempre em prontidão para atende-los",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'RobotoMono',
                              fontSize: 20,
                            ),
                            maxLines: 2)),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadowColor: Colors.black,
                        ),
                        child: const Text(
                          "Fale conosco",
                          style: TextStyle(
                            color: Color.fromRGBO(55, 156, 210, 1),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 100, bottom: 70, right: 50, left: 50),
                child: Column(
                  children: [
                    const AutoSizeText(
                      "Sobre a Genone",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 40),
                    Container(
                        width: 50,
                        height: 7,
                        color: const Color.fromRGBO(73, 174, 228, 1)),
                    const SizedBox(height: 40),
                    const Text(
                      """O grupo GenOne Biotech nasceu com o conceito de oferecer soluções e inovação tecnológica para os pesquisadores brasileiros. Composto essencialmente de profissionais experientes, pós-graduados nos campos da biotecnologia e negócios, possuí uma equipe especializada capaz de oferecer todo o suporte necessário ao desenvolvimento do seu projeto de pesquisa, com agilidade e economia.

A incessante busca por novas tecnologias que agreguem qualidade e praticidade aos nossos serviços nos permitiu alcançar os padrões internacionais de qualidade, este pioneirismo nos possibilitou sermos a primeira empresa nacional a oferecer o serviços de sequenciamento de última geração através das mais modernas tecnologias presentes no mercado internacional.

Com este conceito de trazer sempre inovação aos nossos clientes, estamos sempre atualizados com as tendências tecnológicas para oferecer o que há de mais moderno na prestação de serviços para empresas públicas e privadas do ramo da biotecnologia. Desde o estágio da elaboração do projeto de pesquisa até a validação dos produtos, da pesquisa básica à aplicada, do diagnóstico ao medicamento, pode contar conosco.  """,
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 40),
                    Container(
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(95, 191, 229, 1),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromRGBO(95, 191, 229, 1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Casos de Sucesso - Publicações",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )))
                  ],
                )),
            MediaQuery.of(context).size.width < 800
                ? Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 100, bottom: 70),
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide.none),
                          image: DecorationImage(
                            image: AssetImage(AppImages.homeBiomoleculas),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        // alignment: Alignment.topCenter,
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(73, 174, 228, 1),
                          border: Border(top: BorderSide.none),
                        ),
                        child: Column(
                          children: [
                            Image.asset(AppImages.iconBiotech,
                                height: 50, color: Colors.white),
                            const AutoSizeText(
                              "Biotecnologia Descomplicada",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'RobotoMono',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 40, top: 10),
                              child: Text(
                                  "Soluções da saúde humana à agricultura",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'RobotoMono',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Container(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      shadowColor: Colors.black,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "Saiba Mais",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(73, 174, 228, 1),
                                          fontSize: 16),
                                    )))
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 100, bottom: 70),
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide.none),
                          image: DecorationImage(
                            image: AssetImage(AppImages.homeBiomoleculas2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 400,
                          padding: const EdgeInsets.only(top: 100, bottom: 70),
                          decoration: const BoxDecoration(
                            border: Border(top: BorderSide.none),
                            image: DecorationImage(
                              image: AssetImage(AppImages.homeBiomoleculas),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: 400,
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(73, 174, 228, 1),
                            border: Border(top: BorderSide.none),
                          ),
                          child: Column(
                            children: [
                              Image.asset(AppImages.iconBiotech,
                                  height: 50, color: Colors.white),
                              const Padding(
                                padding: EdgeInsets.only(top: 40),
                                child: AutoSizeText(
                                  "Biotecnologia Descomplicada",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'RobotoMono',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 40, top: 10),
                                child: AutoSizeText(
                                    "Soluções da saúde humana à agricultura",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'RobotoMono',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Container(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    shadowColor: Colors.black,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Saiba Mais",
                                    style: TextStyle(
                                        color: Color.fromRGBO(73, 174, 228, 1),
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 400,
                          padding: const EdgeInsets.only(top: 100, bottom: 70),
                          decoration: const BoxDecoration(
                            border: Border(top: BorderSide.none),
                            image: DecorationImage(
                              image: AssetImage(AppImages.homeBiomoleculas2),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
            Container(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 70, left: 10, right: 10),
              child: Column(
                children: [
                  const AutoSizeText(
                    "Produção de Biomoléculas",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'RobotoMono',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Container(
                      width: 50,
                      height: 7,
                      color: const Color.fromRGBO(73, 174, 228, 1)),
                  const SizedBox(height: 40),
                  MediaQuery.of(context).size.width > 1000
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: ProductionBiomoleculesBloc()
                                    .genesBloc("big")),
                            const SizedBox(width: 10),
                            Expanded(
                                child: ProductionBiomoleculesBloc()
                                    .oligonucleotideosBloc("big")),
                            const SizedBox(width: 10),
                            Expanded(
                                child: ProductionBiomoleculesBloc()
                                    .PeptideosBloc("big")),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ProductionBiomoleculesBloc()
                                    .genesBloc("small")),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ProductionBiomoleculesBloc()
                                    .oligonucleotideosBloc("small")),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ProductionBiomoleculesBloc()
                                    .PeptideosBloc("small")),
                          ],
                        ),
                ],
              ),
            ),
            const AutoSizeText(
              "Serviços em multiômica",
              maxLines: 1,
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            Container(
              width: 50,
              height: 7,
              color: const Color.fromRGBO(73, 174, 228, 1),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: ServiceMultiomicaBloc().genomicaBloc("big")),
                Expanded(child: ServiceMultiomicaBloc().metagenomicaBloc("big")),
                Expanded(child: ServiceMultiomicaBloc().proteomicaBloc("big")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
