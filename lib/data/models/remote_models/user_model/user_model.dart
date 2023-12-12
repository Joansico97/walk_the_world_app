import 'package:freezed_annotation/freezed_annotation.dart';

import 'finished_route.dart';
import 'rated_route.dart';

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
    List<FinishedRoute>? finishedRoutes,
    List<RatedRoute>? ratedRoutes,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
