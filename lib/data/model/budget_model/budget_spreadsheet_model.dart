import 'package:get/get.dart';

class BudgetSpreadsheetModel {
  int idLine;
  String name;
  String restrictionFive;
  String restrictionAvoid;
  String restrictionThree;
  String sequence;
  String vector;
  String dnaPtn;
  String quantityDelivered;
  String typePreparation;
  bool isOptimize;
  String species;
  RxBool sequenceValid;

  BudgetSpreadsheetModel({
    required this.idLine,
    required this.name,
    required this.restrictionFive,
    required this.restrictionAvoid,
    required this.restrictionThree,
    required this.sequence,
    required this.vector,
    required this.dnaPtn,
    required this.quantityDelivered,
    required this.typePreparation,
    required this.isOptimize,
    required this.species,
    required this.sequenceValid,
  });
}