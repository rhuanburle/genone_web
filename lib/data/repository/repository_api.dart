import 'package:genone_web_flutter/data/model/user_register.dart';
import 'package:genone_web_flutter/data/providers/services/service_client.dart';

class RepositoryApi {

  final ServiceClient _authService = ServiceClient();

  Future signIn({required String email, required String password}) => _authService.signIn(email: email, password: password);
  Future signUp(UserRegister userRegister) => _authService.signUp(userRegister);


}