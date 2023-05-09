import 'package:genone_web_flutter/data/providers/services/auth_service.dart';

class RegistrationRepository {
  AuthService authService = AuthService();

  Future signUp({required String email, required String password}) => authService.signUp(email: email, password: password);

}
