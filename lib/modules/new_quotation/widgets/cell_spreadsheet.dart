import 'package:flutter/material.dart';

class CellSpreadsheet extends StatelessWidget {
  final bool colorDif;
  final String text;
  const CellSpreadsheet({Key? key, required this.colorDif, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          decoration: BoxDecoration(
            color: colorDif ? Colors.grey[300] : Colors.white,
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Text(text, style: const TextStyle(fontSize: 12), textAlign: TextAlign.center),
        ),
        for(int i = 0; i < 3; i++)
          Container(
            alignment: Alignment.center,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: const TextField(
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 12),
              ),
            ),
          ),
      ],
    );
  }
}
