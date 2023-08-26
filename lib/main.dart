import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/hive/register_adapter.dart';
import 'package:genone_web_flutter/data/repository/repository_api.dart';
import 'package:genone_web_flutter/modules/home/home_page.dart';
import 'package:genone_web_flutter/modules/new_quotation/new_quotation_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'firebase_options.dart';
import 'routes/app_pages.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  Register.adapter();
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
      initialBinding: GlobalBindings(),
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RepositoryApi()); // Registrar a instância globalmente
  }
}

