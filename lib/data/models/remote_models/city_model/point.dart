import 'package:freezed_annotation/freezed_annotation.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class PointModel with _$PointModel {
  factory PointModel({
    String? name,
    String? img,
    String? description,
    String? lat,
    String? lng,
  }) = _PointModel;

  factory PointModel.fromJson(Map<String, dynamic> json) => _$PointModelFromJson(json);
}
