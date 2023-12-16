// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_details_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantDetailsPageModelImpl _$$RestaurantDetailsPageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantDetailsPageModelImpl(
      index: json['index'] as int,
      isActive:
          (json['isActive'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$RestaurantDetailsPageModelImplToJson(
        _$RestaurantDetailsPageModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'isActive': instance.isActive,
    };
