// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_route.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalRouteAdapter extends TypeAdapter<LocalRoute> {
  @override
  final int typeId = 5;

  @override
  LocalRoute read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalRoute(
      id: fields[0] as String?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      description: fields[3] as String?,
      points: (fields[4] as List?)?.cast<LocalPoints>(),
    )
      ..rating = fields[5] as double?
      ..amoungtRating = fields[6] as double?;
  }

  @override
  void write(BinaryWriter writer, LocalRoute obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.points)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.amoungtRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalRouteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
