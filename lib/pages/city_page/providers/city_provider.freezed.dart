// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityPageModel _$CityPageModelFromJson(Map<String, dynamic> json) {
  return _CityPageModel.fromJson(json);
}

/// @nodoc
mixin _$CityPageModel {
  bool get isCharging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityPageModelCopyWith<CityPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityPageModelCopyWith<$Res> {
  factory $CityPageModelCopyWith(
          CityPageModel value, $Res Function(CityPageModel) then) =
      _$CityPageModelCopyWithImpl<$Res, CityPageModel>;
  @useResult
  $Res call({bool isCharging});
}

/// @nodoc
class _$CityPageModelCopyWithImpl<$Res, $Val extends CityPageModel>
    implements $CityPageModelCopyWith<$Res> {
  _$CityPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
  }) {
    return _then(_value.copyWith(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityPageModelImplCopyWith<$Res>
    implements $CityPageModelCopyWith<$Res> {
  factory _$$CityPageModelImplCopyWith(
          _$CityPageModelImpl value, $Res Function(_$CityPageModelImpl) then) =
      __$$CityPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCharging});
}

/// @nodoc
class __$$CityPageModelImplCopyWithImpl<$Res>
    extends _$CityPageModelCopyWithImpl<$Res, _$CityPageModelImpl>
    implements _$$CityPageModelImplCopyWith<$Res> {
  __$$CityPageModelImplCopyWithImpl(
      _$CityPageModelImpl _value, $Res Function(_$CityPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
  }) {
    return _then(_$CityPageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityPageModelImpl implements _CityPageModel {
  const _$CityPageModelImpl({required this.isCharging});

  factory _$CityPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityPageModelImplFromJson(json);

  @override
  final bool isCharging;

  @override
  String toString() {
    return 'CityPageModel(isCharging: $isCharging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityPageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCharging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityPageModelImplCopyWith<_$CityPageModelImpl> get copyWith =>
      __$$CityPageModelImplCopyWithImpl<_$CityPageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityPageModelImplToJson(
      this,
    );
  }
}

abstract class _CityPageModel implements CityPageModel {
  const factory _CityPageModel({required final bool isCharging}) =
      _$CityPageModelImpl;

  factory _CityPageModel.fromJson(Map<String, dynamic> json) =
      _$CityPageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  @JsonKey(ignore: true)
  _$$CityPageModelImplCopyWith<_$CityPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
