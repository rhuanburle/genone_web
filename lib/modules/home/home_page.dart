import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global_widgets/appBar_customized.dart';
import '../../utils/app_images.dart';
import 'common_widgets/contact_form.dart';
import 'common_widgets/others_bloc.dart';
import 'common_widgets/production_biomolecules_bloc.dart';
import 'common_widgets/service_multiomica_bloc.dart';
import 'common_widgets/uncomplicated_biotechnology.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  final ctrl = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.of(context).size.width;
    ctrl.initializer();

    return Scaffold(
      appBar: AppBarCustomized.appBar(context),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 1366),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
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
                                onPressed: () {
                                  _scrollController.animateTo(_scrollController.position.maxScrollExtent,
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.fastOutSlowIn,);
                                },
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
                            const SizedBox(
                              width: 1000,
                              child: Text(
                                """O grupo GenOne Biotech nasceu com o conceito de oferecer soluções e inovação tecnológica para os pesquisadores brasileiros. Composto essencialmente de profissionais experientes, pós-graduados nos campos da biotecnologia e negócios, possuí uma equipe especializada capaz de oferecer todo o suporte necessário ao desenvolvimento do seu projeto de pesquisa, com agilidade e economia.

A incessante busca por novas tecnologias que agreguem qualidade e praticidade aos nossos serviços nos permitiu alcançar os padrões internacionais de qualidade, este pioneirismo nos possibilitou sermos a primeira empresa nacional a oferecer o serviços de sequenciamento de última geração através das mais modernas tecnologias presentes no mercado internacional.

Com este conceito de trazer sempre inovação aos nossos clientes, estamos sempre atualizados com as tendências tecnológicas para oferecer o que há de mais moderno na prestação de serviços para empresas públicas e privadas do ramo da biotecnologia. Desde o estágio da elaboração do projeto de pesquisa até a validação dos produtos, da pesquisa básica à aplicada, do diagnóstico ao medicamento, pode contar conosco.  """,
                                style:
                                TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(height: 40),
                            SizedBox(
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
                                    onPressed: () {

                                    },
                                    child: const Text(
                                      "Casos de Sucesso - Publicações",
                                      style:
                                      TextStyle(color: Colors.white, fontSize: 16),
                                    )))
                          ],
                        )),
                    AnimatedCrossFade(
                        firstChild: UncomplicatedBiotechnology().biotecBannerColum(),
                        secondChild: UncomplicatedBiotechnology().biotecBannerRow(),
                        crossFadeState: widthMedia > 800
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 500)),
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
                          AnimatedCrossFade(
                              firstChild: Row(
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
                              ),
                              secondChild: Column(
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
                              crossFadeState: widthMedia > 1000
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 500)),
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
                    AnimatedCrossFade(
                      firstChild: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ServiceMultiomicaBloc().genomicaBloc("big"),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: ServiceMultiomicaBloc().metagenomicaBloc("big"),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                                child: ServiceMultiomicaBloc().proteomicaBloc("big")),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ServiceMultiomicaBloc().genomicaBloc("small"),
                            const SizedBox(height: 15),
                            ServiceMultiomicaBloc().metagenomicaBloc("small"),
                            const SizedBox(height: 15),
                            ServiceMultiomicaBloc().proteomicaBloc("small"),
                          ],
                        ),
                      ),
                      crossFadeState: widthMedia > 1000
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 500),
                    ),
                    const SizedBox(height: 40),
                    const AutoSizeText(
                      "Outros Serviços",
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
                    AnimatedCrossFade(
                      firstChild: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: OthersBloc().storageDnaBloc("big"),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: OthersBloc().bensonBloc("big"),
                            ),
                            const SizedBox(width: 20),
                            Expanded(child: OthersBloc().pcrBloc("big")),
                          ],
                        ),
                      ),
                      secondChild: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OthersBloc().storageDnaBloc("small"),
                            const SizedBox(height: 15),
                            OthersBloc().bensonBloc("small"),
                            const SizedBox(height: 15),
                            OthersBloc().pcrBloc("small"),
                          ],
                        ),
                      ),
                      crossFadeState: widthMedia > 1000
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 500),
                    ),
                    const SizedBox(height: 40),
                    const AutoSizeText(
                      "Clientes",
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
                    Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ctrl.clientBannerCount == 1
                              ? Flexible(child: Image.asset(AppImages.logos1To10))
                              : ctrl.clientBannerCount == 2
                              ? Flexible(child: Image.asset(AppImages.logos11To20))
                              : ctrl.clientBannerCount == 3
                              ? Flexible(child: Image.asset(AppImages.logos21To30))
                              : ctrl.clientBannerCount == 4
                              ? Flexible(child: Image.asset(AppImages.logos31To40))
                              : Flexible(child: Image.asset(AppImages.logos41To50)),

                          ctrl.clientBannerCount == 1 && widthMedia > 600
                              ? Flexible(child: Image.asset(AppImages.logos11To20))
                              : ctrl.clientBannerCount == 2 && widthMedia > 600
                              ? Flexible(child: Image.asset(AppImages.logos21To30))
                              : ctrl.clientBannerCount == 3 && widthMedia > 600
                              ? Flexible(child: Image.asset(AppImages.logos31To40))
                              : ctrl.clientBannerCount == 4 && widthMedia > 600
                              ? Flexible(child: Image.asset(AppImages.logos41To50))
                              : widthMedia > 600 ? Flexible(child: Image.asset(AppImages.logos51To60)) : Container()
                        ],
                      );
                    }),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
