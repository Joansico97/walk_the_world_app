// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageModelImpl _$$HomePageModelImplFromJson(Map<String, dynamic> json) =>
    _$HomePageModelImpl(
      isCharging: json['isCharging'] as bool,
      isSearching: json['isSearching'] as bool,
      cities: (json['cities'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      searchedCities: (json['searchedCities'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$HomePageModelImplToJson(_$HomePageModelImpl instance) =>
    <String, dynamic>{
      'isCharging': instance.isCharging,
      'isSearching': instance.isSearching,
      'cities': instance.cities,
      'searchedCities': instance.searchedCities,
    };
