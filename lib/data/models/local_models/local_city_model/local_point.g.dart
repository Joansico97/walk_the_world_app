// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_point.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalPointsAdapter extends TypeAdapter<LocalPoints> {
  @override
  final int typeId = 3;

  @override
  LocalPoints read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalPoints(
      id: fields[0] as String?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      description: fields[3] as String?,
      lat: fields[4] as String?,
      lng: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocalPoints obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.lat)
      ..writeByte(5)
      ..write(obj.lng);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalPointsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
