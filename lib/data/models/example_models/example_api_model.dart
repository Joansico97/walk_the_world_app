import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_api_model.freezed.dart';
part 'example_api_model.g.dart';

// You can change this model according to the response you get from the API
@freezed
class ExampleApiModel with _$ExampleApiModel {
  const factory ExampleApiModel({
    bool? success,
    String? data, // You can change this to a model class
    String? error,
    required String message,
  }) = _ExampleApiModel;

  factory ExampleApiModel.fromJson(Map<String, dynamic> json) => _$ExampleApiModelFromJson(json);
}
