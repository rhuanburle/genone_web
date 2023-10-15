import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';

class UncomplicatedBiotechnology {

  biotecBannerColum() {
    return Column(
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
              // Container(
              //     width: 200,
              //     height: 50,
              //     child: ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.white,
              //           shape: RoundedRectangleBorder(
              //             side: const BorderSide(
              //                 color: Colors.white, width: 2),
              //             borderRadius: BorderRadius.circular(30),
              //           ),
              //           shadowColor: Colors.black,
              //         ),
              //         onPressed: () {},
              //         child: const Text(
              //           "Saiba Mais",
              //           style: TextStyle(
              //               color:
              //               Color.fromRGBO(73, 174, 228, 1),
              //               fontSize: 16),
              //         )))
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
    );
  }

  biotecBannerRow(){
    return Row(
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                // Container(
                //   width: 200,
                //   height: 50,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(
                //         side: const BorderSide(
                //             color: Colors.white, width: 2),
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //       shadowColor: Colors.black,
                //     ),
                //     onPressed: () {},
                //     child: const Text(
                //       "Saiba Mais",
                //       style: TextStyle(
                //           color: Color.fromRGBO(73, 174, 228, 1),
                //           fontSize: 16),
                //     ),
                //   ),
                // ),
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
    );
  }
}
