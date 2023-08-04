import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';
import 'routes/app_pages.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Genone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewQuotationPage(),
      getPages: AppPages.pages,
    );
  }
}
