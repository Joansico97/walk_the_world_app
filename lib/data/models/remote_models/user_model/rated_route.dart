import 'package:freezed_annotation/freezed_annotation.dart';

part 'rated_route.freezed.dart';
part 'rated_route.g.dart';

@freezed
class RatedRoute with _$RatedRoute {
  factory RatedRoute({
    String? id,
    String? name,
  }) = _RatedRoute;

  factory RatedRoute.fromJson(Map<String, dynamic> json) =>
      _$RatedRouteFromJson(json);
}
