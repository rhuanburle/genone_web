import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';

class BlocWidgets {
  genesBloc() {
    return Flexible(
      child: Container(
        height: 400 ,
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
                Image.asset(AppImages.genesynthGenes, height: 50),
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
                AutoSizeText("Serviço completo de síntese de genes",
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
          ],),),
    );
  }

  oligonucleotideosBloc() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
              Row(
                children: [
                  Image.asset(AppImages.genesynthGenes, height: 50),
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
                  AutoSizeText("Serviço completo de síntese de genes",
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
            ],),),
      ),
    );
  }

  PeptideosBloc() {
    return Flexible(
      child: Container(
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
                Image.asset(AppImages.genesynthGenes, height: 50),
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
                AutoSizeText("Serviço completo de síntese de genes",
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
          ],),),
    );
  }
}