import 'package:hive/hive.dart';

part 'hive_complete_budget.g.dart';

@HiveType(typeId: 0)
class HiveCompleteBudget extends HiveObject{
  @HiveField(0)
  String id;
  @HiveField(2)
  String nameGene;
  @HiveField(3)
  String basePairs;
  @HiveField(4)
  double totalPrice;
  @HiveField(5)
  double bdCust;
  @HiveField(6)
  double pricePerBp;
  @HiveField(7)
  DateTime dateCreated;
  @HiveField(8)
  DateTime dateUpdated;
  @HiveField(9)
  String status;
  @HiveField(10)
  String idUser;
  @HiveField(11)
  String idBudget;
  @HiveField(12)
  String complexity;
  @HiveField(13)
  double dolarPrice;
  @HiveField(14)
  double margin;
  @HiveField(15)
  String userName;
  @HiveField(16)
  String userEmail;
  @HiveField(17)
  String cpf;
  @HiveField(18)
  int numberBudget;
  @HiveField(19)
  String validity;
  @HiveField(20)
  String deadline;
  @HiveField(21)
  String guarantee;

  HiveCompleteBudget({
    required this.id,
    required this.nameGene,
    required this.basePairs,
    required this.totalPrice,
    required this.bdCust,
    required this.pricePerBp,
    required this.dateCreated,
    required this.dateUpdated,
    required this.status,
    required this.idUser,
    required this.idBudget,
    required this.complexity,
    required this.dolarPrice,
    required this.margin,
    required this.userName,
    required this.userEmail,
    required this.cpf,
    required this.numberBudget,
    required this.validity,
    required this.deadline,
    required this.guarantee,
  });

  factory HiveCompleteBudget.fromJson(Map<String, dynamic> json) => HiveCompleteBudget(
    id: json["id"],
    nameGene: json["nameGene"],
    basePairs: json["basePairs"],
    totalPrice: json["totalPrice"],
    bdCust: json["bdCust"],
    pricePerBp: json["pricePerBp"],
    dateCreated: DateTime.parse(json["dateCreated"]),
    dateUpdated: DateTime.parse(json["dateUpdated"]),
    status: json["status"],
    idUser: json["idUser"],
    idBudget: json["idBudget"],
    complexity: json["complexity"],
    dolarPrice: json["dolarPrice"],
    margin: json["margin"],
    userName: json["userName"],
    userEmail: json["userEmail"],
    cpf: json["cpf"],
    numberBudget: json["numberBudget"],
    validity: json["validity"],
    deadline: json["deadline"],
    guarantee: json["guarantee"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nameGene": nameGene,
    "basePairs": basePairs,
    "totalPrice": totalPrice,
    "bdCust": bdCust,
    "pricePerBp": pricePerBp,
    "dateCreated": dateCreated.toIso8601String(),
    "dateUpdated": dateUpdated.toIso8601String(),
    "status": status,
    "idUser": idUser,
    "idBudget": idBudget,
    "complexity": complexity,
    "dolarPrice": dolarPrice,
    "margin": margin,
    "userName": userName,
    "userEmail": userEmail,
    "cpf": cpf,
    "numberBudget": numberBudget,
    "validity": validity,
    "deadline": deadline,
    "guarantee": guarantee,
  };
}