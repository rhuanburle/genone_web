import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/budget_model/budget_spreadsheet_model.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NewQuotationController extends GetxController with AppUtil {

  RxString enzymeSelected = "".obs;
  RxInt numberLines = 1.obs;
  RxDouble heightSpreadsheet = 75.0.obs;

  @override
  void onInit() {
    getNumberLines();
    super.onInit();
  }

  List<String> dnaPtnList = [
    '',
    'DNA',
    'PTN'
  ];

  List<String> qtyType = [
    '', '4ug - Padrão','100ug','200ug','500ug','1mg','10mg (High-copy)','10mg (Low-copy)'
  ];

  List<String> species = [
    '','Não','E.coli','Arabidopsis thaliana','Bacillus subtilis','Bos taurus','Brassica napus','Caenorhabditis elegans','Caulobacter crescentus CB15','Chlamydomonas reinhardtii','Cricetulus griseus','Drosophila melanogaster','Escherichia coli K12','Glycine max','Homo sapiens','Hordeum vulgare','Mus musculus','Nicotiana benthamiana','Nicotiana tabacum','Oryctolagus cuniculus','Oryza sativa','Pichia pastoris','Rattus norvegicus','Saccharomyces cerevisiae','Schizosaccharomyces pombe','Spodoptera frugiperda','Synechococcus elongatus','Vaccinia virus','Xenopus laevis','Zea mays'
  ];

  List<String> prepareType = [
    '',
    'Pesquisa',
    'Pré-Clínico',
    'Transfecção',
  ];

  List<String> optimizar = ['Sim', 'Não'];

  getList(text) {
    if(text == 'Vetor') {
      return vectorList;
    } else if(text == 'DNA/PTN') {
      return dnaPtnList;
    } else if(text == 'Sítios de Restrição 5\'' || text == 'Sítios de Restrição 3\'' || text == 'Sítios de Restrição para evitar') {
      return enzymesList;
    } else if(text == 'Quantidade a ser Entregue') {
      return qtyType;
    } else if(text == 'Tipo de Preparação') {
      return prepareType;
    } else if(text == 'Espécie') {
      return species;
    } else if (text == 'Otimizar') {
      return optimizar;
    } else {
      return [];
    }
  }

  List<String> columnsSelectOption = [
    '',
    "Sítios de Restrição 5'",
    "Sítios de Restrição 3'",
    "Vetor",
    "DNA/PTN",
    "Quantidade a ser Entregue",
    "Otimizar",
    "Tipo de Preparação",
    "Espécie",
    "Sítios de Restrição para evitar"
  ];

  List<String> worksheetTitlesList = [
    "Nome",
    "Sítios de Restrição 5'",
    "Sequência",
    "Sítios de Restrição 3'",
    "Vetor",
    "DNA/PTN",
    "Quantidade a ser Entregue",
    "Tipo de Preparação",
    "Otimizar",
    "Espécie",
    "Sítios de Restrição para evitar"
  ];

  List<String> enzymesList = [
    '',
    'AatII',
    'Acc65I',
    'AflII',
    'AgeI',
    'AluI',
    'ApaI',
    'ApaLI',
    'AscI',
    'AseI',
    'AvrII',
    'BamHI',
    'BclI',
    'BfaI',
    'BglII',
    'BsiWI',
    'BspEI',
    'BspHI',
    'BsrGI',
    'BssHII',
    'BstBI',
    'BstUI',
    'ClaI',
    'DpnI',
    'DraI',
    'EagI',
    'EcoRI',
    'EcoRV',
    'FseI',
    'FspI',
    'HaeIII',
    'HhaI',
    'HindIII',
    'HpaI',
    'KasI',
    'KpnI',
    'MboI',
    'MluI',
    'MscI',
    'MseI',
    'MspI',
    'NaeI',
    'NarI',
    'NciI',
    'NcoI',
    'NdeI',
    'NheI',
    'NlaIII',
    'NotI',
    'NruI',
    'PacI',
    'PaeR7I',
    'PmeI',
    'PmlI',
    'PstI',
    'PvuI',
    'PvuII',
    'RsaI',
    'SacI',
    'SacII',
    'SalI',
    'ScaI',
    'SmaI',
    'SnaBI',
    'SpeI',
    'SphI',
    'SrfI',
    'SspI',
    'StuI',
    'XbaI',
    'XhoI'
  ];
  
  List<String> vectorList = [
    '','Próprio','pUC57','pUC57-Kan','pUC57-BsaI-Free','pUC19','pUC18','pUC57-1.8K','pUC57-Simple','pBlueScript II SK(+)','pFastBac1 - Bcv','pFastBac-Dual - Bcv','pcDNA3.1(+)','pcDNA3.1(-)','pcDNA3.1(+) myc-His A','pcDNA3.1(+) myc-His B','pcDNA3.1(+) myc-His C','pcDNA3.1 myc-His(-) A','pcDNA3.1 myc-His(-) C','pcDNA3.1(+)-EGFP','pcDNA3.1/Hygro(+)','pcDNA3.1/Hygro(-)','pcDNA3.1/Zeo (+)','pcDNA3.1/Zeo (-)','psiCHECK2','pEGFP-N1','pEGFP-C1','pGL3-basic','pGL3-Promotor','pPIC 3.5k','pPIC9','pPIC9K','pPICZA','pPICZB','pPICZC','pPICZαA','pPICZαB','pPICZαC','pET-3a','pET-3d','pET-9a','pET-11a','pET-11b','pET-11d','pET-15b','pET-16b','pET-17b','pET-19b','pET-20b(+)','pET-21a(+)','pET-21b(+)','pET-21d(+)','pET-22b(+)','pET-23a(+)','pET-24a(+)','pET-24b(+)','pET-24c(+)','pET-24d(+)','pET-25b(+)','pET-26b(+)','pET-27b(+)','pET-28a(+)','pET-28b(+)','pET-29a(+)','pET-29b(+)','pET-30a(+)','pET-30b(+)','pET-31b(+)','pET-32a(+)','pET-32b(+)','pET-40b(+)','pET-41a(+)','pET-41b(+)','pET-42b(+)','pET-43.1a(+)','pET-45b(+)','pET-51b(+)','pET-52b(+)','pGEX-4T-1','pGEX-4T-2','pGEX-5X-1','pGEX-6P-1','pGEX-6P-3','pCDFDuet-1','pMAL-c4x','pMAL-c5E','pMAL-c5x','pMAL-p5E','pMAl-p5x','pQE-30','pQE-60','pGS-21a'
  ];

  List<bool> colorDifList = [
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false
  ];

  List<BudgetSpreadsheetModel> linesBudgetsList = [
    BudgetSpreadsheetModel(
      idLine: 1,
      name: '',
      restrictionFive: '',
      restrictionAvoid: '',
      restrictionThree: '',
      sequence: '',
      vector: '',
      dnaPtn: '',
      quantityDelivered: '',
      typePreparation: '',
      isOptimize: false,
      species: '',
      sequenceValid: true.obs,
    ),
  ];

  void getNumberLines() {
    numberLines.value = linesBudgetsList.length;
  }

  updateBudgetSpreadsheetModel({required String text, required BudgetSpreadsheetModel line, required String value}) {
    switch (text) {
      case 'Nome':
        line.name = value;
        break;
      case 'Sequência':
        line.sequence = value;
        break;
      case 'Sítios de Restrição 5\'':
        line.restrictionFive = value;
        break;
      case 'Sítios de Restrição 3\'':
        line.restrictionThree = value;
        break;
      case 'Vetor':
        line.vector = value;
        break;
      case 'DNA/PTN':
        line.dnaPtn = value;
        break;
      case 'Quantidade a ser Entregue':
        line.quantityDelivered = value;
        break;
      case 'Tipo de Preparação':
        line.typePreparation = value;
        break;
      case 'Otimizar':
        line.isOptimize = value == 'Sim' ? true : false;
        break;
      case 'Espécie':
        line.species = value;
        break;
      case 'Sítios de Restrição para evitar':
        line.restrictionAvoid = value;
        break;
    }
  }

  RxBool validateConcluded = true.obs;
  validateSequential() {
    validateConcluded.value = false;
    for(int i = 0; i < linesBudgetsList.length; i++) {
      if(linesBudgetsList[i].dnaPtn == 'DNA') {
        linesBudgetsList[i].sequenceValid.value = RegExp('^[ATCG]+\$').hasMatch(linesBudgetsList[i].sequence);
      } else if(linesBudgetsList[i].dnaPtn == 'PTN') {
        linesBudgetsList[i].sequenceValid.value = RegExp('^[ABCDEFGHIKLMNPQRSTVWYZ]+\$').hasMatch(linesBudgetsList[i].sequence);
      }
    }

    if(linesBudgetsList.any((element) => element.sequenceValid.value == false || element.sequence.isEmpty || element.dnaPtn == '')) {
      showDialogGeneral(title: 'Erro', text: 'Sequência inválida', textButton: 'Ok');
      } else if(linesBudgetsList.any((element) => element.dnaPtn == 'DNA' && !element.isOptimize)) {
        showDialogGeneral(title: 'Atenção', text: 'DNA precisa ser Otimizado', textButton: 'Ok');
    } else {
      showDialogGeneral(title: 'Sucesso', text: 'Sequências válidas', textButton: 'Ok');
    }

    validateConcluded.value = true;
  }

  showDialogGeneral({required String title, required String text, required String textButton}) {
    Get.defaultDialog(
      title: title,
      content: Text(text),
      textConfirm: textButton,
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
      },
    );
  }

  void addLine(){
    linesBudgetsList.add(BudgetSpreadsheetModel(
      idLine: linesBudgetsList.length + 1,
      name: '',
      restrictionFive: '',
      restrictionAvoid: '',
      restrictionThree: '',
      sequence: '',
      vector: '',
      dnaPtn: '',
      quantityDelivered: '',
      typePreparation: '',
      isOptimize: false,
      species: '',
      sequenceValid: true.obs,
    ));
    numberLines.value = linesBudgetsList.length;
    heightSpreadsheet.value += 25.0;
  }
}
