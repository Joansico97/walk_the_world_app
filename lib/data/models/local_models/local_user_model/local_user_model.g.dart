// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalUserModelAdapter extends TypeAdapter<LocalUserModel> {
  @override
  final int typeId = 0;

  @override
  LocalUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalUserModel(
      id: fields[0] as String?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      fullName: fields[3] as String?,
      lastName: fields[4] as String?,
      userImage: fields[5] as String?,
      finishedRoutes: (fields[6] as List?)?.cast<EdRoute>(),
      ratedRoutes: (fields[7] as List?)?.cast<EdRoute>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalUserModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.fullName)
      ..writeByte(4)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.userImage)
      ..writeByte(6)
      ..write(obj.finishedRoutes)
      ..writeByte(7)
      ..write(obj.ratedRoutes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
