import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_controller.dart';
import 'package:get/get.dart';

class DropdownWidget extends StatefulWidget {

  final String text;
  const DropdownWidget({super.key, required this.text});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  final ctrl = Get.put(NewQuotationController());
  List<String> listDrop = [];
  String dropdownValue = "";

  @override
  void initState() {
    super.initState();
    _loadList();
    _loadDropdownValue();
  }

  Future<void> _loadDropdownValue() async {
    if(widget.text == 'Otimizar') {
      dropdownValue = 'Não';
    }
  }

  Future<void> _loadList() async {
    listDrop = await ctrl.getList(widget.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      isExpanded: true,
      value: dropdownValue,
      items: listDrop.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: const TextStyle(fontSize: 10)),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
