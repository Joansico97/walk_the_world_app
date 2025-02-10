import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walk_the_world_app/data/models/user_models/user_models.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? id,
    String? name,
    String? email,
    String? fullName,
    String? lastName,
    String? userImage,
    List<FinishedRouteModel>? finishedRoutes,
    List<RatedRouteModel>? ratedRoutes,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
