import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_images.dart';
import '../home_controller.dart';

final ctrl = HomeController();

class OthersBloc {
  storageDnaBloc(String size) {
    return Container(
      height: size == 'big' ? 350 : null,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(55, 156, 210, 1),
            blurRadius: 7,
            offset: Offset(0, 3), //
          ),
        ],
        color: Color.fromRGBO(55, 156, 210, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AutoSizeText("Armazenamento de DNA e RNA",
              maxLines: 1,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'RobotoMono',
              )),
          Image.asset(AppImages.genTegraLogo, height: 150),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: AutoSizeText(
                "Tubos Gentegra para armazenamento e transporte de DNA e RNA à temperatura ambiente.",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'RobotoMono',
                )),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text(
                  "Ver Mais",
                  style: TextStyle(
                      color: Color.fromRGBO(73, 174, 228, 1), fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bensonBloc(String size) {
    return Container(
      height: size == 'big' ? 350 : null,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(55, 156, 210, 1),
            blurRadius: 7,
            offset: Offset(0, 3), //
          ),
        ],
        color: Color.fromRGBO(55, 156, 210, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AutoSizeText("Benson colunas de HPLC",
              maxLines: 1,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'RobotoMono',
              )),
          Image.asset(AppImages.bensonLogo, height: 150),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: AutoSizeText(
                "Especializada em Colunas para análise de Carboidratos e Ácidos Orgaânicos por HPLC .",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'RobotoMono',
                )),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text(
                  "Ver Mais",
                  style: TextStyle(
                      color: Color.fromRGBO(73, 174, 228, 1), fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  pcrBloc(String size) {
    return Container(
      height: size == 'big' ? 350 : null,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(55, 156, 210, 1),
            blurRadius: 7,
            offset: Offset(0, 3), //
          ),
        ],
        color: Color.fromRGBO(55, 156, 210, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AutoSizeText("PCR arrays realtimeprimers",
              maxLines: 1,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'RobotoMono',
              )),
          Image.asset(AppImages.realTimeLogo, height: 150),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: AutoSizeText(
                "Primers otimizados para PCR em tempo real e PCR arrays para diversas vias de sinalização de humanos e camundongos.",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'RobotoMono',
                )),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.black,
                ),
                onPressed: () {
                  ctrl.startTimer();
                },
                child: const Text(
                  "Ver Mais",
                  style: TextStyle(
                      color: Color.fromRGBO(73, 174, 228, 1), fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
