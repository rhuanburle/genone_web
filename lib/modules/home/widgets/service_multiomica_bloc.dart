import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';

class ServiceMultiomicaBloc {
  genomicaBloc(String size) {
    return Container(
      height: size == "big" ? 800 : null,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          size == "big" ?
          Container(
            alignment: Alignment.topCenter,
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
          ) : Container(),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: size == 'small' ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Image.asset(AppImages.dnaHome, height: 70, color: const Color.fromRGBO(55, 156, 210, 1),),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                        SizedBox(width: 5),
                        AutoSizeText("Sequenciamento de Genomas\nComplexos",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'RobotoMono')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                        SizedBox(width: 5),
                        AutoSizeText("Expressão Gênica ou Transcriptômica\npor RNAseq",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'RobotoMono')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                    padding: EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
    ],
              ),
              size != "big" ?
              Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.multiomicaGenoneHome),
                    fit: BoxFit.fitHeight,
                    // opacity: 0.5,
                  ),
                ),
              ) : Container(),
            ],
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
                backgroundColor: const Color.fromRGBO(55, 156, 210, 1),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),),),
        ],
      ),
    );
  }

  metagenomicaBloc(String size) {
    return Container(
      height: size == "big" ? 800 : null,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          size == "big" ?
          Container(
            alignment: Alignment.topCenter,
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
          ) : Container(),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: size == 'small' ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Image.asset(AppImages.metagenomicsHome, height: 70, color: const Color.fromRGBO(55, 156, 210, 1),),
              const Text("Metagenômica",
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
                "Avaliação da composição de microbiomas, aceitamos amostras brutas ou o DNA já extraído.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                        SizedBox(width: 5),
                        AutoSizeText("Metagenômica tipo Shotgun",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'RobotoMono')),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Metatranscriptômica tipo Shotgun",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Metabarcoding",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Bactérias - 16S",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
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
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Archaea - 16S",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Eucariotos - 18S",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText(
                              "Fungos - ITS",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Alvos Personalizados",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Pacotes Completos de Serviços:",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Extração de DNA",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Bioinformática",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                  ],
                ),
                size != "big" ?
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppImages.multiomicaGenoneHome),
                      fit: BoxFit.fitHeight,
                      // opacity: 0.5,
                    ),
                  ),
                ) : Container(),
              ]
          ),
          // size == 'big' ? const SizedBox(height: 60) : const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(55, 156, 210, 1),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),),),
        ],),
    );
  }

  proteomicaBloc(String size) {
    return Container(
      height: size == "big" ? 800 : null,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          size == "big" ?
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
          ) : Container(),
          const SizedBox(height: 3,),
          Row(
            mainAxisAlignment: size == 'small' ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Image.asset(AppImages.proteomicHome, height: 70, color: const Color.fromRGBO(55, 156, 210, 1),),
              const Text("Proteômica",
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
                "Diversas opções para uma análise compreensiva de proteínas isoladas à misturas complexas.\nServiços completos incluindo análises de bioinformática.",
                maxLines: 3,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'RobotoMono')),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                        SizedBox(width: 5),
                        AutoSizeText("Perfil Proteômico",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'RobotoMono')),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("MALDI-TOF/TOF ou nano-LC-ESI-MS/MS",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Análises por espectrometria de massas\ne bioinformática.",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Quantificação",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("iTRAQ / Label-Free",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Proteínas em amostras complexas",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Caracterização",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText(
                              "MALDI-TOF/TOF ou nano-LC-ESI-MS/MS",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: const [
                          Icon(Icons.circle, color: Color.fromRGBO(55, 156, 210, 1), size: 10,),
                          SizedBox(width: 5),
                          AutoSizeText("Proteínas isoladas.",
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'RobotoMono')),
                        ],
                      ),
                    ),
                  ],
                ),
                size != "big" ?
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppImages.multiomicaGenoneHome),
                      fit: BoxFit.fitHeight,
                      // opacity: 0.5,
                    ),
                  ),
                ) : Container(),
              ],
          ),
          SizedBox(
            width: 100,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(55, 156, 210, 1),
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(30),
                ),
                shadowColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                "Ver Mais",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),),),
        ],
      ),
    );
  }
}