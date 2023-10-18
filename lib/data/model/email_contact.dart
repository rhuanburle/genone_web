class EmailContact {
  String name;
  String email;
  String phone;
  String subject;
  String message;
  String dateCreate;


  EmailContact(
      {required this.name,
        required this.email,
        required this.phone,
        required this.subject,
        required this.message,
        required this.dateCreate});

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'subject': subject,
    'message': message,
    'dateCreate': dateCreate,
  };
}