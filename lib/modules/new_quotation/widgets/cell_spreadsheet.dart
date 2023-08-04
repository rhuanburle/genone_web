import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:get/get.dart';

class CellSpreadsheet extends StatelessWidget {
  final bool colorDif;
  final String text;
  CellSpreadsheet({Key? key, required this.colorDif, required this.text}) : super(key: key);
  final ctrl = Get.put(NewQuotationController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            color: colorDif ? Colors.grey[300] : Colors.white,
            border: Border.all(color: Colors.grey[300]!),
          ),
          child:
          Text(text, style: const TextStyle(fontSize: 12), textAlign: TextAlign.center),
        ),
        for(int i = 0; i < 18; i++)
          Container(
            alignment: Alignment.center,
            height: 25,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: text == "Sítios de Restrição 5'" ? TextField(
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 10),
              ),
            ) : DropdownButton(items: ctrl.buildMenuItem, onChanged: onChanged)
          ),
      ],
    );
  }
}
