import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:genone_web_flutter/modules/new_quotation/widgets/dropdown_widget.dart';
import 'package:get/get.dart';

class CellSpreadsheet extends StatelessWidget {
  final bool colorDif;
  final String text;

  CellSpreadsheet({Key? key, required this.colorDif, required this.text})
      : super(key: key);

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
          Text(text == 'Sequência' ? text + ' **' : text, style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
