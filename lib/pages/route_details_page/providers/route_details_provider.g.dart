// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_details_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteDetailsPageModelImpl _$$RouteDetailsPageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RouteDetailsPageModelImpl(
      index: json['index'] as int,
      isPlaying: json['isPlaying'] as bool,
      isActive:
          (json['isActive'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$RouteDetailsPageModelImplToJson(
        _$RouteDetailsPageModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'isPlaying': instance.isPlaying,
      'isActive': instance.isActive,
    };
