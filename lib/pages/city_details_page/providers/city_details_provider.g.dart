// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_details_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityDetailsPageModelImpl _$$CityDetailsPageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CityDetailsPageModelImpl(
      isCharging: json['isCharging'] as bool,
      isSearching: json['isSearching'] as bool,
      index: json['index'] as int,
      isSelected:
          (json['isSelected'] as List<dynamic>).map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$$CityDetailsPageModelImplToJson(
        _$CityDetailsPageModelImpl instance) =>
    <String, dynamic>{
      'isCharging': instance.isCharging,
      'isSearching': instance.isSearching,
      'index': instance.index,
      'isSelected': instance.isSelected,
    };
