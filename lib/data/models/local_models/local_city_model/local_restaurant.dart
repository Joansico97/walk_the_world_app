import 'package:hive_flutter/hive_flutter.dart';

part 'local_restaurant.g.dart';

@HiveType(typeId: 4)
class LocalRestaurant {
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
  @HiveField(6)
  double? rating;
  @HiveField(7)
  double? amoungtRating;

  LocalRestaurant({
    this.id,
    this.name,
    this.img,
    this.description,
    this.lat,
    this.lng,
  });

  factory LocalRestaurant.fromJson(Map<String, dynamic> json) => LocalRestaurant(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        description: json["description"],
        lat: json["lat"],
        lng: json["lng"],
      );
}
