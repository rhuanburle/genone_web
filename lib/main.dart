import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Ui/home/home_page.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Genone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}
