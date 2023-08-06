import 'package:genone_web_flutter/data/model/payment_method.dart';

class UserRequest {
  String id;
  String name;
  String email;
  String phone;
  String company;
  String streetAddress;
  String city;
  String state;
  String zipCode;
  String dateCreated;
  String dateUpdated;
  List<String> paymentMethods;

  UserRequest({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.company,
    required this.streetAddress,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.dateCreated,
    required this.dateUpdated,
    required this.paymentMethods,
  });

  factory UserRequest.fromJson(Map<String, dynamic> json) => UserRequest(
    id: json["id"] ?? '',
    name: json["name"] ?? '',
    email: json["email"],
    phone: json["phone"] ?? '',
    company: json["company"] ?? '',
    streetAddress: json["streetAddress"] ?? '',
    city: json["city"] ?? '',
    state: json["state"] ?? '',
    zipCode: json["zipCode"] ?? '',
    dateCreated: json["dateCreated"] ?? '',
    dateUpdated: json["dateUpdated"] ?? '',
    paymentMethods: List<String>.from(json["paymentMethods"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "company": company,
    "streetAddress": streetAddress,
    "city": city,
    "state": state,
    "zipCode": zipCode,
    "dateCreated": dateCreated,
    "dateUpdated": dateUpdated,
    "paymentMethods": List<dynamic>.from(paymentMethods.map((x) => x)),
  };
}