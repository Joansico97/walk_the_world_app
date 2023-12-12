import 'package:hive_flutter/hive_flutter.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_restaurant.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_route.dart';

part 'local_city_model.g.dart';

@HiveType(typeId: 2)
class LocalCityModel {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? img;
  @HiveField(3)
  List<LocalRoute>? routes;
  @HiveField(4)
  List<LocalRestaurant>? restaurants;

  LocalCityModel({
    this.id,
    this.name,
    this.img,
    this.routes,
    this.restaurants,
  });

  factory LocalCityModel.fromJson(Map<String, dynamic> json) => LocalCityModel(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        routes: json["routes"] == null ? [] : List<LocalRoute>.from(json["routes"]!.map((x) => LocalRoute.fromJson(x))),
        restaurants: json["restaurants"] == null
            ? []
            : List<LocalRestaurant>.from(json["restaurants"]!.map((x) => LocalRestaurant.fromJson(x))),
      );
}
