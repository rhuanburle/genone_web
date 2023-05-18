import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGeneral extends StatelessWidget {
  final String title;
  final String message;
  const DialogGeneral({Key? key, required this.title, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(title),
      content: Text(message),
      actions: [
        Center(child: Container(
          width: 100,
          margin: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              onPressed: () {
                Get.back();
              }, child: const Text("Ok")),
        )),
      ],
    );
  }
}
