import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get_storage/get_storage.dart';

class AuthService with ChangeNotifier, AppUtil{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get authStateChanges => _auth.authStateChanges();
  final storage = GetStorage();

  String? token;
  String? userId;
  String? userEmail;
  DateTime? expiryDate;

  Future<String?> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (_auth.currentUser != null) {
        token = await _auth.currentUser!.getIdToken();
        userId = _auth.currentUser!.uid;
        userEmail = _auth.currentUser!.email;
        expiryDate = DateTime.now().add(Duration(seconds: 3600));

        storage.write('auth', true);
        storage.write('token', token);
        storage.write('userId', userId);
        storage.write('userEmail', userEmail);
        storage.write('expiryDate', expiryDate.toString());
      } else {
        return "Erro ao adicionar usuário";
      }
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      loggerError(message: e.toString());
      return e.message;
    }
  }

  // sign out
  Future signOut() async {
    try {
      await _auth.signOut();
      storage.erase();
    } catch (e) {
      loggerError(message: e.toString());
      return null;
    }
  }

  Future<String?> signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      loggerError(message: e.toString());
      return e.message;
    }
  }
}