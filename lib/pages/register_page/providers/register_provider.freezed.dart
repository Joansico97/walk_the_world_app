// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterPageModel _$RegisterPageModelFromJson(Map<String, dynamic> json) {
  return _RegisterPageModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterPageModel {
  bool get isCharging => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isRepObscure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterPageModelCopyWith<RegisterPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageModelCopyWith<$Res> {
  factory $RegisterPageModelCopyWith(
          RegisterPageModel value, $Res Function(RegisterPageModel) then) =
      _$RegisterPageModelCopyWithImpl<$Res, RegisterPageModel>;
  @useResult
  $Res call({bool isCharging, bool isObscure, bool isRepObscure});
}

/// @nodoc
class _$RegisterPageModelCopyWithImpl<$Res, $Val extends RegisterPageModel>
    implements $RegisterPageModelCopyWith<$Res> {
  _$RegisterPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isObscure = null,
    Object? isRepObscure = null,
  }) {
    return _then(_value.copyWith(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isRepObscure: null == isRepObscure
          ? _value.isRepObscure
          : isRepObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPageModelImplCopyWith<$Res>
    implements $RegisterPageModelCopyWith<$Res> {
  factory _$$RegisterPageModelImplCopyWith(_$RegisterPageModelImpl value,
          $Res Function(_$RegisterPageModelImpl) then) =
      __$$RegisterPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCharging, bool isObscure, bool isRepObscure});
}

/// @nodoc
class __$$RegisterPageModelImplCopyWithImpl<$Res>
    extends _$RegisterPageModelCopyWithImpl<$Res, _$RegisterPageModelImpl>
    implements _$$RegisterPageModelImplCopyWith<$Res> {
  __$$RegisterPageModelImplCopyWithImpl(_$RegisterPageModelImpl _value,
      $Res Function(_$RegisterPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isObscure = null,
    Object? isRepObscure = null,
  }) {
    return _then(_$RegisterPageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isRepObscure: null == isRepObscure
          ? _value.isRepObscure
          : isRepObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterPageModelImpl implements _RegisterPageModel {
  const _$RegisterPageModelImpl(
      {required this.isCharging,
      required this.isObscure,
      required this.isRepObscure});

  factory _$RegisterPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterPageModelImplFromJson(json);

  @override
  final bool isCharging;
  @override
  final bool isObscure;
  @override
  final bool isRepObscure;

  @override
  String toString() {
    return 'RegisterPageModel(isCharging: $isCharging, isObscure: $isObscure, isRepObscure: $isRepObscure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isRepObscure, isRepObscure) ||
                other.isRepObscure == isRepObscure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isCharging, isObscure, isRepObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPageModelImplCopyWith<_$RegisterPageModelImpl> get copyWith =>
      __$$RegisterPageModelImplCopyWithImpl<_$RegisterPageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPageModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterPageModel implements RegisterPageModel {
  const factory _RegisterPageModel(
      {required final bool isCharging,
      required final bool isObscure,
      required final bool isRepObscure}) = _$RegisterPageModelImpl;

  factory _RegisterPageModel.fromJson(Map<String, dynamic> json) =
      _$RegisterPageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  bool get isObscure;
  @override
  bool get isRepObscure;
  @override
  @JsonKey(ignore: true)
  _$$RegisterPageModelImplCopyWith<_$RegisterPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
