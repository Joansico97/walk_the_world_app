// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityProviderModelImpl _$$CityProviderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CityProviderModelImpl(
      listCities: (json['listCities'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchedCities: (json['searchedCities'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CityProviderModelImplToJson(
        _$CityProviderModelImpl instance) =>
    <String, dynamic>{
      'listCities': instance.listCities,
      'searchedCities': instance.searchedCities,
    };
