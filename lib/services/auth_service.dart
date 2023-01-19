import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  String? token;
  String? userId;
  String? userEmail;
  DateTime? expiryDate;

  bool get isAuth {
    final isValid = expiryDate?.isAfter(DateTime.now()) ?? false;
    return token != null && isValid;
  }

  String? get userToken {
    return isAuth ? token : null;
  }

  String? get email {
    return isAuth ? userEmail : null;
  }

  String? get uid {
    return isAuth ? userId : null;
  }

  Future<String?> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (_auth.currentUser != null) {
        token = await _auth.currentUser!.getIdToken();
        userId = _auth.currentUser!.uid;
        userEmail = _auth.currentUser!.email;
        expiryDate = DateTime.now().add(Duration(seconds: 3600));
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
      return await _auth.signOut();
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