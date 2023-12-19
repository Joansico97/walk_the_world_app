import 'package:hive_flutter/hive_flutter.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_point.dart';

part 'local_route.g.dart';

@HiveType(typeId: 5)
class LocalRoute {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? img;
  @HiveField(3)
  String? description;
  @HiveField(4)
  List<LocalPoints>? points;
  @HiveField(5)
  double? rating;
  @HiveField(6)
  double? amoungtRating;

  LocalRoute({
    this.id,
    this.name,
    this.img,
    this.description,
    this.points,
  });

  factory LocalRoute.fromJson(Map<String, dynamic> json) => LocalRoute(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        description: json["description"],
        points:
            json["points"] == null ? [] : List<LocalPoints>.from(json["points"]!.map((x) => LocalPoints.fromJson(x))),
      );
}
