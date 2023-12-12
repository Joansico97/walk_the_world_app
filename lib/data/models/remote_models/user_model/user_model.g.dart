// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      lastName: json['lastName'] as String?,
      userImage: json['userImage'] as String?,
      finishedRoutes: (json['finishedRoutes'] as List<dynamic>?)
          ?.map((e) => FinishedRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratedRoutes: (json['ratedRoutes'] as List<dynamic>?)
          ?.map((e) => RatedRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'fullName': instance.fullName,
      'lastName': instance.lastName,
      'userImage': instance.userImage,
      'finishedRoutes': instance.finishedRoutes,
      'ratedRoutes': instance.ratedRoutes,
    };
