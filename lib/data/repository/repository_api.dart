import 'package:genone_web_flutter/data/providers/services/auth_service.dart';

class RepositoryApi {

  final AuthService _authService = AuthService();

  Future signIn({required String email, required String password}) => _authService.signIn(email: email, password: password);
  Future signUp({required String email, required String password}) => _authService.signUp(email: email, password: password);

}