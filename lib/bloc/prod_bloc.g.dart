// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveProdAdapter extends TypeAdapter<HiveProd> {
  @override
  final int typeId = 1;

  @override
  HiveProd read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveProd(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
      fields[8] as String,
      fields[9] as String,
      fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveProd obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.barcode)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.nutriscore)
      ..writeByte(5)
      ..write(obj.novagroup)
      ..writeByte(6)
      ..write(obj.ecoscore)
      ..writeByte(7)
      ..write(obj.quantityOriginName)
      ..writeByte(8)
      ..write(obj.quantityOriginDesc)
      ..writeByte(9)
      ..write(obj.vegeName)
      ..writeByte(10)
      ..write(obj.vegeValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveProdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
