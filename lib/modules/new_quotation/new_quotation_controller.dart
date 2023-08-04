import 'package:flutter/material.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';

class NewQuotationController extends GetxController with AppUtil {
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

  @override
  void onInit() {
    super.onInit();
  }
}
