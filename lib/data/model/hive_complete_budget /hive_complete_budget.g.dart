// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_complete_budget.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCompleteBudgetAdapter extends TypeAdapter<HiveCompleteBudget> {
  @override
  final int typeId = 0;

  @override
  HiveCompleteBudget read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCompleteBudget(
      id: fields[0] as String,
      nameGene: fields[2] as String,
      basePairs: fields[3] as String,
      totalPrice: fields[4] as double,
      bdCust: fields[5] as double,
      pricePerBp: fields[6] as double,
      dateCreated: fields[7] as DateTime,
      dateUpdated: fields[8] as DateTime,
      status: fields[9] as String,
      idUser: fields[10] as String,
      idBudget: fields[11] as String,
      complexity: fields[12] as String,
      dolarPrice: fields[13] as double,
      margin: fields[14] as double,
      userName: fields[15] as String,
      userEmail: fields[16] as String,
      cpf: fields[17] as String,
      numberBudget: fields[18] as int,
      validity: fields[19] as String,
      deadline: fields[20] as String,
      guarantee: fields[21] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCompleteBudget obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.nameGene)
      ..writeByte(3)
      ..write(obj.basePairs)
      ..writeByte(4)
      ..write(obj.totalPrice)
      ..writeByte(5)
      ..write(obj.bdCust)
      ..writeByte(6)
      ..write(obj.pricePerBp)
      ..writeByte(7)
      ..write(obj.dateCreated)
      ..writeByte(8)
      ..write(obj.dateUpdated)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.idUser)
      ..writeByte(11)
      ..write(obj.idBudget)
      ..writeByte(12)
      ..write(obj.complexity)
      ..writeByte(13)
      ..write(obj.dolarPrice)
      ..writeByte(14)
      ..write(obj.margin)
      ..writeByte(15)
      ..write(obj.userName)
      ..writeByte(16)
      ..write(obj.userEmail)
      ..writeByte(17)
      ..write(obj.cpf)
      ..writeByte(18)
      ..write(obj.numberBudget)
      ..writeByte(19)
      ..write(obj.validity)
      ..writeByte(20)
      ..write(obj.deadline)
      ..writeByte(21)
      ..write(obj.guarantee);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCompleteBudgetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
