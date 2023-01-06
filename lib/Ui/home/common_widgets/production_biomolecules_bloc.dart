import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';

class ProductionBiomoleculesBloc {
  genesBloc(String size) {
    return Container(
      height: 400 ,
      padding: const EdgeInsets.only(bottom: 0, top: 0, left: 10, right: 10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(55, 156, 210, 1),
        borderRadius:
        BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 3,),
          Row(
            children: [
              Image.asset(AppImages.genesynthGenes, height: 70),
              const Text("Genes",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Serviço essencial para estudar a função de genes ou para produção de recombinantes.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.white, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Sintetize Genes ou Regiões Reguladoras",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Serviço completo de síntese de genes",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Sequencias prontas para uso\nsem complicação",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Otimização de códons gratuita",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Subclonagens para vetores indicados\npelos clientes",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Maxi e Midi Preps livres de endotoxinas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.white, width: 2),
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(
                    color:
                    Color.fromRGBO(73, 174, 228, 1),
                    fontSize: 12),
              ),),),
        ],),);
  }

  oligonucleotideosBloc(String size) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(73, 174, 228, 1),
        borderRadius:
        BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.oligosynthHome, height: 70),
          const Text("Oligonucleotideos",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'RobotoMono',
              )),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Insumo fundamental para o estudo da biologia molecular de altíssima qualidade aprovado pelas melhores instituições do país.",
                maxLines: 4,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.white, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Oligos Simples",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Inúmeras modificações e marcações",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Sondas Fluorescentes",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Atendimento Rápido e Especializado",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.white, width: 2),
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(
                    color:
                    Color.fromRGBO(73, 174, 228, 1),
                    fontSize: 12),
              ),),),
        ],),);
  }

  PeptideosBloc(String size) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(55, 156, 210, 1),
        borderRadius:
        BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(AppImages.peptidesynthHome, height: 70),
              const Text("Peptídeos",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Peptídeos sintéticos possuem atividade biológica muito útil, podendo substituir peptídeos naturais ou até proteínas mais complexas.",
                maxLines: 4,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.white, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Diversas modificações",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Escalas de síntese de 1mg até gramas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversos graus de pureza",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.white, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Estrito controle de qualidade",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.white, width: 2),
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(
                    color:
                    Color.fromRGBO(73, 174, 228, 1),
                    fontSize: 12),
              ),),),
        ],),);
  }
}