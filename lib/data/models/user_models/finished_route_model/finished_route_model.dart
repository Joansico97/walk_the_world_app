import 'package:freezed_annotation/freezed_annotation.dart';

part 'finished_route_model.freezed.dart';
part 'finished_route_model.g.dart';

@freezed
class FinishedRouteModel with _$FinishedRouteModel {
  factory FinishedRouteModel({
    String? id,
    String? name,
  }) = _FinishedRouteModel;

  factory FinishedRouteModel.fromJson(Map<String, dynamic> json) => _$FinishedRouteModelFromJson(json);
}
