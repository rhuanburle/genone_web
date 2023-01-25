import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get authStateChanges => _auth.authStateChanges();

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
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('auth', true);
        await prefs.setString('token', token!);
        await prefs.setString('userId', userId!);
        await prefs.setString('userEmail', userEmail!);
        await prefs.setString('expiryDate', expiryDate.toString());
      } else {
        return "Erro ao adicionar usuário";
      }
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // sign out
  Future signOut() async {
    try {
      await _auth.signOut();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('auth', false);
      await prefs.setString('token', "");
      await prefs.setString('userId', "");
      await prefs.setString('userEmail', "");
      await prefs.setString('expiryDate', "");
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<String?> signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}