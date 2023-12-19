import 'package:freezed_annotation/freezed_annotation.dart';

import 'point.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class RouteModel with _$RouteModel {
  factory RouteModel({
    String? id,
    String? name,
    String? img,
    String? description,
    double? rating,
    double? amoungtRating,
    List<PointModel>? points,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) => _$RouteModelFromJson(json);
}
