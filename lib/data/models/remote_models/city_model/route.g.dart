// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteModelImpl _$$RouteModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      amoungtRating: (json['amoungtRating'] as num?)?.toDouble(),
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => PointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RouteModelImplToJson(_$RouteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'description': instance.description,
      'rating': instance.rating,
      'amoungtRating': instance.amoungtRating,
      'points': instance.points,
    };
