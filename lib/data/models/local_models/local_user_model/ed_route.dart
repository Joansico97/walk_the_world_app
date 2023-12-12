import 'package:hive_flutter/hive_flutter.dart';

part 'ed_route.g.dart';

@HiveType(typeId: 1)
class EdRoute {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;

  EdRoute({
    this.id,
    this.name,
  });

  factory EdRoute.fromJson(Map<String, dynamic> json) => EdRoute(
        id: json["id"],
        name: json["name"],
      );
}
