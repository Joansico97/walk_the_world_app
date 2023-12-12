import 'package:freezed_annotation/freezed_annotation.dart';

import 'point.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
class Route with _$Route {
  factory Route({
    String? id,
    String? name,
    String? img,
    String? description,
    List<Point>? points,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
