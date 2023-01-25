class User {
  String name;
  String email;
  String phone;
  String streetAddress;
  String city;
  String state;
  String zipCode;
  String dateCreated;
  String dateUpdated;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.streetAddress,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.dateCreated,
    required this.dateUpdated,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"] ?? '',
    email: json["email"],
    phone: json["phone"] ?? '',
    streetAddress: json["streetAddress"] ?? '',
    city: json["city"] ?? '',
    state: json["state"] ?? '',
    zipCode: json["zipCode"] ?? '',
    dateCreated: json["dateCreated"] ?? '',
    dateUpdated: json["dateUpdated"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "streetAddress": streetAddress,
    "city": city,
    "state": state,
    "zipCode": zipCode,
    "dateCreated": dateCreated,
    "dateUpdated": dateUpdated,
  };

}