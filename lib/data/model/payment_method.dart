class PaymentMethod {
  final String id;
  final String name;
  final String description;
  final String image;
  final String status;

  PaymentMethod({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.status,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) {
    return PaymentMethod(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "image": image,
    "status": status,
  };
}