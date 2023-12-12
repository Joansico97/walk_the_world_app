// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_city_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalCityModelAdapter extends TypeAdapter<LocalCityModel> {
  @override
  final int typeId = 2;

  @override
  LocalCityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalCityModel(
      id: fields[0] as String?,
      name: fields[1] as String?,
      img: fields[2] as String?,
      routes: (fields[3] as List?)?.cast<LocalRoute>(),
      restaurants: (fields[4] as List?)?.cast<LocalRestaurant>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalCityModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.img)
      ..writeByte(3)
      ..write(obj.routes)
      ..writeByte(4)
      ..write(obj.restaurants);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalCityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
