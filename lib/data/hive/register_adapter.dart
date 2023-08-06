import 'package:genone_web_flutter/data/model/hive_complete_budget%20/hive_complete_budget.dart';
import 'package:hive/hive.dart';

class Register {
  static adapter() {
    return [
    Hive.registerAdapter(HiveCompleteBudgetAdapter()),
    ];
  }
}