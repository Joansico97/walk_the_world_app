import 'package:freezed_annotation/freezed_annotation.dart';

import 'restaurant.dart';
import 'route.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  factory CityModel({
    String? id,
    String? name,
    String? img,
    List<RouteModel>? routes,
    List<Restaurant>? restaurants,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}
