import 'package:genone_web_flutter/data/model/payment_method.dart';

class UserRegister {
  String name;
  String email;
  String password;
  String phone;
  String cpf;
  String cnpj;
  String birthDate;
  String dateCreated;
  String dateUpdate;
  String adress;
  String city;
  String state;
  String zip;
  String district;
  String complement;
  String company;
  String comments;
  String paymentMethods;

  UserRegister({
    required this.name,
    required this.email,
    required this.phone,
    required this.company,
    required this.adress,
    required this.city,
    required this.state,
    required this.zip,
    required this.dateCreated,
    required this.dateUpdate,
    required this.paymentMethods,
    required this.password,
    required this.cpf,
    required this.cnpj,
    required this.birthDate,
    required this.district,
    required this.complement,
    required this.comments,
  });

  factory UserRegister.fromJson(Map<String, dynamic> json) => UserRegister(
    name: json["name"] ?? '',
    email: json["email"],
    phone: json["phone"] ?? '',
    company: json["company"] ?? '',
    adress: json["streetAddress"] ?? '',
    city: json["city"] ?? '',
    state: json["state"] ?? '',
    zip: json["zipCode"] ?? '',
    dateCreated: json["dateCreated"] ?? '',
    dateUpdate: json["dateUpdate"] ?? '',
    password: json["password"] ?? '',
    cpf: json["cpf"] ?? '',
    cnpj: json["cnpj"] ?? '',
    birthDate: json["birthDate"] ?? '',
    district: json["district"] ?? '',
    complement: json["complement"] ?? '',
    comments: json["comments"] ?? '',
    paymentMethods: json["paymentMethods"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "company": company,
    "streetAddress": adress,
    "city": city,
    "state": state,
    "zipCode": zip,
    "dateCreated": dateCreated,
    "dateUpdated": dateUpdate,
    "password": password,
    "cpf": cpf,
    "cnpj": cnpj,
    "birthDate": birthDate,
    "district": district,
    "complement": complement,
    "comments": comments,
    "paymentMethods": paymentMethods,
  };
}