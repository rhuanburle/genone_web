import 'package:genone_web_flutter/data/model/email_contact.dart';
import 'package:genone_web_flutter/data/model/user_register.dart';
import 'package:genone_web_flutter/data/providers/services/service_client.dart';
import 'package:genone_web_flutter/data/providers/services/service_send_email.dart';

class RepositoryApi {

  final ServiceClient _authService = ServiceClient();
  final ServiceSendEmail _serviceSendEmail = ServiceSendEmail();

  Future signIn({required String email, required String password}) => _authService.signIn(email: email, password: password);
  Future signUp(UserRegister userRegister) => _authService.signUp(userRegister);
  Future sendContactEmail({required EmailContact emailContact}) => _serviceSendEmail.sendContactEmail(emailContact: emailContact);

}