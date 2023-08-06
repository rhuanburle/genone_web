import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genone_web_flutter/data/model/budget_model/budget_spreadsheet_model.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:get/get.dart';

class TextFieldCustomer extends StatelessWidget {
  final BudgetSpreadsheetModel line;
  final String text;
  TextFieldCustomer({super.key, required this.line, required this.text});
  final ctrl = Get.put(NewQuotationController());

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[A-Z]'))],
      decoration: const InputDecoration(
        isDense: true,
        border: InputBorder.none,
        hintStyle: TextStyle(fontSize: 10),
      ),
      onChanged: (value) {
        ctrl.updateBudgetSpreadsheetModel(line: line, text: text, value: value.toString());
      },
    );
  }
}