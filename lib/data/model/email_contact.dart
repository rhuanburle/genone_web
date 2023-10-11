import 'package:intl/intl.dart';

class EmailContact {
  String name;
  String email;
  String phone;
  String subject;
  String message;
  DateTime dateCreate = DateFormat('yyyy-MM-dd').parse(DateTime.now().toString());


  EmailContact(
      {required this.name,
        required this.email,
        required this.phone,
        required this.subject,
        required this.message});

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'subject': subject,
    'message': message,
    'dateCreate': dateCreate.toString(),
  };
}