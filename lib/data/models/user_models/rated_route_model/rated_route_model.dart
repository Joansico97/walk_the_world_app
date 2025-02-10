import 'package:freezed_annotation/freezed_annotation.dart';

part 'rated_route_model.freezed.dart';
part 'rated_route_model.g.dart';

@freezed
class RatedRouteModel with _$RatedRouteModel {
  factory RatedRouteModel({
    String? id,
    String? name,
  }) = _RatedRouteModel;

  factory RatedRouteModel.fromJson(Map<String, dynamic> json) => _$RatedRouteModelFromJson(json);
}
