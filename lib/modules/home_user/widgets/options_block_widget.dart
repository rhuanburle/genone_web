import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OptionsBlocWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  final String route;
  const OptionsBlocWidget({Key? key, required this.name, required this.icon, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => Get.toNamed(route),
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        height:150,
        width: 150,
        padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              // spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, size: 80, color: Colors.blue,),
            Text(name, style: const TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
