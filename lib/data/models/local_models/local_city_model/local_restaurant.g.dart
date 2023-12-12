// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_restaurant.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalRestaurantAdapter extends TypeAdapter<LocalRestaurant> {
  @override
  final int typeId = 4;

  @override
  LocalRestaurant read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalRestaurant(
      id: fields[0] as String?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      description: fields[3] as String?,
      lat: fields[4] as String?,
      lng: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocalRestaurant obj) {
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
      other is LocalRestaurantAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
