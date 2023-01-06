import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';

class ServiceMultiomicaBloc {
  genomicaBloc(String size) {
    return Container(
      // height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.multiomicaGenoneHome),
                fit: BoxFit.fitHeight,
                // opacity: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 3,),
          Row(
            children: [
              Image.asset(AppImages.genesynthGenes, height: 70, color: Colors.black,),
              const Text("Genômica",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Inúmeras possibilidades através das mais modernas tecnologias de sequenciamento de DNA e RNA.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.black, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Sequenciamento de Pequenos Genomas",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Sequenciamento de Genomas Complexos",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Genotipagem",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Expressão Gênica ou Transcriptômica por RNAseq",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Epigenômica",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversas estratégias",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversos Tipos de Bibliotecas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Combinação de Diferentes Plataformas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Pacotes Completos de Serviços",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Bioinformática Para Diversas Aplicações",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Basta enviar DNA ou RNA com boa qualidade e sem degradação.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'RobotoMono')),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.black, width: 2),
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
        ],),
    );
  }

  proteomicaBloc(String size) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.multiomicaGenoneHome),
                fit: BoxFit.fitHeight,
                // opacity: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 3,),
          Row(
            children: [
              Image.asset(AppImages.genesynthGenes, height: 70, color: Colors.black,),
              const Text("Genômica",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Inúmeras possibilidades através das mais modernas tecnologias de sequenciamento de DNA e RNA.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.black, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Sequenciamento de Pequenos Genomas",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Sequenciamento de Genomas Complexos",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Genotipagem",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Expressão Gênica ou Transcriptômica por RNAseq",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Epigenômica",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversas estratégias",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversos Tipos de Bibliotecas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Combinação de Diferentes Plataformas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Pacotes Completos de Serviços",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Bioinformática Para Diversas Aplicações",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Basta enviar DNA ou RNA com boa qualidade e sem degradação.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'RobotoMono')),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.black, width: 2),
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
        ],),
    );
  }

  metagenomicaBloc(String size) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.multiomicaGenoneHome),
                fit: BoxFit.fitHeight,
                // opacity: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 3,),
          Row(
            children: [
              Image.asset(AppImages.genesynthGenes, height: 70, color: Colors.black,),
              const Text("Genômica",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'RobotoMono',
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: AutoSizeText(
                "Inúmeras possibilidades através das mais modernas tecnologias de sequenciamento de DNA e RNA.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
            children: const [
              Icon(Icons.circle, color: Colors.black, size: 10),
              SizedBox(width: 5),
              AutoSizeText("Sequenciamento de Pequenos Genomas",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'RobotoMono')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Sequenciamento de Genomas Complexos",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Genotipagem",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Expressão Gênica ou Transcriptômica por RNAseq",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Epigenômica",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversas estratégias",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Diversos Tipos de Bibliotecas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText(
                    "Combinação de Diferentes Plataformas",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Pacotes Completos de Serviços",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: const [
                Icon(Icons.circle, color: Colors.black, size: 10),
                SizedBox(width: 5),
                AutoSizeText("Bioinformática Para Diversas Aplicações",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'RobotoMono')),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("Basta enviar DNA ou RNA com boa qualidade e sem degradação.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'RobotoMono')),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.black, width: 2),
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
        ],),
    );
  }
}