import 'package:hive_flutter/hive_flutter.dart';
import 'package:wtw_app/data/models/local_models/local_user_model/ed_route.dart';
part 'local_user_model.g.dart';

@HiveType(typeId: 0)
class LocalUserModel {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? fullName;
  @HiveField(4)
  String? lastName;
  @HiveField(5)
  String? userImage;
  @HiveField(6)
  List<EdRoute>? finishedRoutes;
  @HiveField(7)
  List<EdRoute>? ratedRoutes;

  LocalUserModel({
    this.id,
    this.name,
    this.email,
    this.fullName,
    this.lastName,
    this.userImage,
    this.finishedRoutes,
    this.ratedRoutes,
  });

  factory LocalUserModel.fromJson(Map<String, dynamic> json) => LocalUserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        fullName: json["fullName"],
        lastName: json["lastName"],
        userImage: json["userImage"],
        finishedRoutes: json["finishedRoutes"] == null
            ? []
            : List<EdRoute>.from(json["finishedRoutes"]!.map((x) => EdRoute.fromJson(x))),
        ratedRoutes:
            json["ratedRoutes"] == null ? [] : List<EdRoute>.from(json["ratedRoutes"]!.map((x) => EdRoute.fromJson(x))),
      );
}
