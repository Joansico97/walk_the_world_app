import 'package:hive_flutter/hive_flutter.dart';

part 'local_point.g.dart';

@HiveType(typeId: 3)
class LocalPoints {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? img;
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? lat;
  @HiveField(5)
  String? lng;

  LocalPoints({
    this.id,
    this.name,
    this.img,
    this.description,
    this.lat,
    this.lng,
  });

  factory LocalPoints.fromJson(Map<String, dynamic> json) => LocalPoints(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        description: json["description"],
        lat: json["lat"],
        lng: json["lng"],
      );
}
