import 'package:genone_web_flutter/data/model/free_vectors_available.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';

class PlasmideosAvailableController extends GetxController with AppUtil {

  List<List<FreeVectorsAvailable>> freeVectorsAvailableLists = [
    [],
    [],
    [],
    [],
    [],
  ];

  RxInt indexList = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    await createFreeVectorsAvailableList();
  }

  createFreeVectorsAvailableList() {
    try {
      int index = 0;
      for (Map<String, String> map in jsonVectorList) {
        if (freeVectorsAvailableLists[index].length >= 20) {
          index++;
          if (index >= freeVectorsAvailableLists.length) {
            break;
          }
        }
        freeVectorsAvailableLists[index].add(
          FreeVectorsAvailable(
            nameVector: map["nomeVector"]!.isNotEmpty ? map["nomeVector"]! : '-',
            application: map["aplicacao"]!.isNotEmpty ? map["aplicacao"]! : '-',
            resistance: map["resistencia"]!.isNotEmpty ? map["resistencia"]! : '-',
            promoter: map["promotor"]!.isNotEmpty ? map["promotor"]! : '-',
            tagsN: map["tagsN"]!.isNotEmpty ? map["tagsN"]! : '-',
            tagsC: map["tagsC"]!.isNotEmpty ? map["tagsC"]! : '-',
            cleavage: map["sitiosClivagem"]!.isNotEmpty ? map["sitiosClivagem"]! : '-',
            sequence: '',
          ),
        );
      }
    } catch (e) {
      loggerError(message: e.toString());
    }
  }
  List<String> nameColumList = [
    "nomeVector",
    "Aplicação",
    "Resistência",
    "Promotor",
    "Tags(N-Term.)",
    "Tags(C-Term.)",
    "Clivagem",
    "Sequência",
  ];

  List<Map<String, String>> jsonVectorList = [
      {
        "nomeVector": "pACYCDuet-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "CmR",
        "promotor": "T7",
        "tagsN": "N- His.Tag (MCS1)",
        "tagsC": "C- S.Tag (MCS2)",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pBlueScript II SK(+)",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "T7/T3",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": "-"
      },
      {
        "nomeVector": "pCDFDuet-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "SmR",
        "promotor": "T7",
        "tagsN": "",
        "tagsC": "C- S.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1 myc-His(-) A",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- Myc tag and 6xHis tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1 myc-His(-) C",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- Myc tag and 6xHis tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(-)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(+)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(+) myc-His A",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- Myc tag and 6xHis tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(+) myc-His B",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- Myc tag and 6xHis tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(+) myc-His C",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- Myc tag and 6xHis tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1(+)-EGFP",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "C- EGFP tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1/Hygro(-)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "HygR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1/Hygro(+)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "HygR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1/Zeo (-)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "BleoR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pcDNA3.1/Zeo (+)",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "BleoR/AmpR",
        "promotor": "CMV /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pCOLAduet-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- His.Tag (MCS1)",
        "tagsC": "C- S.Tag (MCS2)",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pEGFP-C1",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR",
        "promotor": "CMV",
        "tagsN": "N- EGFP tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pEGFP-N1",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "NeoR/KanR",
        "promotor": "CMV",
        "tagsN": "",
        "tagsC": "C- EGFP tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET11a",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET11b",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET11d",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET15b",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag",
        "tagsC": "",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET16b",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag",
        "tagsC": "",
        "sitiosClivagem": "Factor Xa site"
      },
      {
        "nomeVector": "pET17b",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET19b",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag",
        "tagsC": "",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pET20b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag",
        "tagsC": "C- Pelb signal",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET21a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET21b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET21d(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET22b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- Pelb signal",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET23a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET24a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET24b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET24c(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET24d(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET25b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- Pelb signal",
        "tagsC": "C- Hsv.Tag and His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET26b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- Pelb signal",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET27b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- Pelb signal",
        "tagsC": "C- Hsv.Tag and His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET28a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- His.Tag and T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET28b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- His.Tag and T7.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET29a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET29b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET30a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- His.Tag and S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET30b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- His.Tag and S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET31b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- KSI and His.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET32a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- TrxA and His.Tag and S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET32b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- TrxA and His.Tag and S.Tag",
        "tagsC": "C- His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET3a",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET3d",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pET40b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "DsbC and His.Tag",
        "tagsC": "C- 8*His.Tag",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pET41a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- GST.Tag and His.Tag and S.Tag",
        "tagsC": "C- 8*His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET41b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- GST.Tag and His.Tag and S.Tag",
        "tagsC": "C- 8*His.Tag",
        "sitiosClivagem": "Thrombin site and Enterokinase site"
      },
      {
        "nomeVector": "pET42b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- GST.Tag and His.Tag and S.Tag",
        "tagsC": "C- 8*His.Tag",
        "sitiosClivagem": "Thrombin site and Factor Xa site"
      },
      {
        "nomeVector": "pET43.1a(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- NusA and His.Tag and S.Tag",
        "tagsC": "C- Hsv.Tag and His.Tag",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pET45b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag",
        "tagsC": "C- S.Tag",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pET51b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- Strep-Tag II",
        "tagsC": "C- 10*His.Tag",
        "sitiosClivagem": "HRV 3C site"
      },
      {
        "nomeVector": "pET52b(+)",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- Strep-Tag II",
        "tagsC": "C- 10*His.Tag",
        "sitiosClivagem": "HRV 3C site"
      },
      {
        "nomeVector": "pET9a",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "KanR",
        "promotor": "T7",
        "tagsN": "N- T7.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pETDuet-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag (MCS1)",
        "tagsC": "C- S.Tag (MCS2)",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pFastBac1",
        "aplicacao": "Expressão Baculovirus/Insetos",
        "resistencia": "AmpR/GmR",
        "promotor": "polyhedrin",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pFastBac-Dual",
        "aplicacao": "Expressão Baculovirus/Insetos",
        "resistencia": "AmpR/GmR",
        "promotor": "p10 & polyhedrin",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pGEX-4T-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pGEX-4T-2",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "Thrombin site"
      },
      {
        "nomeVector": "pGEX-5X-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "Factor Xa site"
      },
      {
        "nomeVector": "pGEX-6P-1",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "PreScission site"
      },
      {
        "nomeVector": "pGEX-6P-3",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "PreScission site"
      },
      {
        "nomeVector": "pGL3-basic",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "C- luciferase tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pGL3-promotor",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "AmpR",
        "promotor": "SV40",
        "tagsN": "",
        "tagsC": "C- luciferase tag",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pGS-21a",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T7",
        "tagsN": "N- His.Tag and GST.Tag",
        "tagsC": "",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pMAL-c4x",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- MBP",
        "tagsC": "",
        "sitiosClivagem": "Factor Xa site"
      },
      {
        "nomeVector": "pMAL-c5E",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- MBP",
        "tagsC": "",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pMAL-c5x",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- MBP",
        "tagsC": "",
        "sitiosClivagem": "Factor Xa site"
      },
      {
        "nomeVector": "pMAL-p5E",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- MBP",
        "tagsC": "",
        "sitiosClivagem": "Enterokinase site"
      },
      {
        "nomeVector": "pMAl-p5x",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "tac",
        "tagsN": "N- MBP",
        "tagsC": "",
        "sitiosClivagem": "Factor Xa site"
      },
      {
        "nomeVector": "pPIC 3.5k",
        "aplicacao": "Expressão leveduras",
        "resistencia": "AmpR",
        "promotor": "AOX1",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPIC9",
        "aplicacao": "Expressão leveduras",
        "resistencia": "AmpR",
        "promotor": "AOX1",
        "tagsN": "N- α-factor secretion signal",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPIC9K",
        "aplicacao": "Expressão leveduras",
        "resistencia": "AmpR/KanR",
        "promotor": "AOX1",
        "tagsN": "N- α-factor secretion signal",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZA",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZB",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZC",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZαA",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "N- α-factor secretion signal",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZαB",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "N- α-factor secretion signal",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pPICZαC",
        "aplicacao": "Expressão leveduras",
        "resistencia": "Zeocin",
        "promotor": "AOX1",
        "tagsN": "N- α-factor secretion signal",
        "tagsC": "C- Myc and 6*His",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pQE-30",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T5",
        "tagsN": "N- His.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pQE-60",
        "aplicacao": "Expressão bacteriana",
        "resistencia": "AmpR",
        "promotor": "T5",
        "tagsN": "N- His.Tag",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "psiCHECK2",
        "aplicacao": "Expressão mamíferos",
        "resistencia": "AmpR",
        "promotor": "HSV TK /T7",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC18",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC19",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC57",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC57-1.8K",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC57-BsaI-Free",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC57-Kan",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "KanR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      },
      {
        "nomeVector": "pUC57-Simple",
        "aplicacao": "Clonagem Padrão",
        "resistencia": "AmpR",
        "promotor": "NA",
        "tagsN": "",
        "tagsC": "",
        "sitiosClivagem": ""
      }
  ];
}




