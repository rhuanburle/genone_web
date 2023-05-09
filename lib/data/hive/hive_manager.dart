import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveManager<T> {

  Future save<T>({required String name, required T model}) async{
    final box = await Hive.openBox("MyBookStory");
    if(box.isOpen){
      print("🐝 $name: HIVE SAVE  🐝");
      box.put(name, model);
    }
  }


  Future deleteAll() async{
    final box = await Hive.openBox("MyBookStory");
    await box.deleteFromDisk();
  }

  Future delete({required String name}) async{
    final box = await Hive.openBox("MyBookStory");
    if(box.isOpen){
      print("🐝 $name: HIVE DELETE  🐝");
      box.delete(name);
    }
  }

  Future closeHive() async{
    try{
      final box = await Hive.openBox("MyBookStory");
      if(box.isOpen){
        await box.close();
      }
    }catch(e){
      print("CLOSE HIVE: 🚨 $e 🚨");
    }
  }

  Future getData<T>({required String name}) async {
    Box box = await Hive.openBox("MyBookStory");
    var result = box.get(name);
    if(result is List){
      return List<T>.from(result);
    }
    debugPrint("🐝 HIVE READING $name  $result 🐝");
    return result;
  }

}