import 'package:freezed_annotation/freezed_annotation.dart';

part 'finished_route.freezed.dart';
part 'finished_route.g.dart';

@freezed
class FinishedRoute with _$FinishedRoute {
  factory FinishedRoute({
    String? id,
    String? name,
  }) = _FinishedRoute;

  factory FinishedRoute.fromJson(Map<String, dynamic> json) =>
      _$FinishedRouteFromJson(json);
}
