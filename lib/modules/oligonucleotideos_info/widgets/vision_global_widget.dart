import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/global_vision.dart';
import 'package:genone_web_flutter/modules/oligonucleotideos_info/oligonucleotideos_Info_controller.dart';
import 'package:get/get.dart';

class VisionGlobalWidget extends StatefulWidget {
  GlobalVision item;
  VisionGlobalWidget({super.key, required this.item});

  @override
  State<VisionGlobalWidget> createState() => _VisionGlobalWidgetState();
}

class _VisionGlobalWidgetState extends State<VisionGlobalWidget> {
  final ctrl = Get.find<OligonucleotideosInfoController>();
  Color colorButton = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onHover: (event) {
          setState(() {
            colorButton = Colors.blue;
          });
        },
        onExit: (event) {
          setState(() {
            colorButton = Colors.grey;
          });
        },
        child: InkWell(
          onTap: () {
            setState(() {
              colorButton = Colors.blue;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: colorButton,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Center(
              child: AutoSizeText(
                widget.item.title,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
