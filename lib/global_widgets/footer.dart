import 'package:flutter/material.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:get/get.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      color: Colors.blue,
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          Get.toNamed(AppRoutes.privacyPolicyPage);
        },
        child: const Text(
          "Politíca de Privacidade",
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
