// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPageModel _$LoginPageModelFromJson(Map<String, dynamic> json) {
  return _LoginPageModel.fromJson(json);
}

/// @nodoc
mixin _$LoginPageModel {
  bool get isCharging => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPageModelCopyWith<LoginPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageModelCopyWith<$Res> {
  factory $LoginPageModelCopyWith(
          LoginPageModel value, $Res Function(LoginPageModel) then) =
      _$LoginPageModelCopyWithImpl<$Res, LoginPageModel>;
  @useResult
  $Res call({bool isCharging, bool isObscure});
}

/// @nodoc
class _$LoginPageModelCopyWithImpl<$Res, $Val extends LoginPageModel>
    implements $LoginPageModelCopyWith<$Res> {
  _$LoginPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isObscure = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPageModelImplCopyWith<$Res>
    implements $LoginPageModelCopyWith<$Res> {
  factory _$$LoginPageModelImplCopyWith(_$LoginPageModelImpl value,
          $Res Function(_$LoginPageModelImpl) then) =
      __$$LoginPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCharging, bool isObscure});
}

/// @nodoc
class __$$LoginPageModelImplCopyWithImpl<$Res>
    extends _$LoginPageModelCopyWithImpl<$Res, _$LoginPageModelImpl>
    implements _$$LoginPageModelImplCopyWith<$Res> {
  __$$LoginPageModelImplCopyWithImpl(
      _$LoginPageModelImpl _value, $Res Function(_$LoginPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isObscure = null,
  }) {
    return _then(_$LoginPageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPageModelImpl implements _LoginPageModel {
  const _$LoginPageModelImpl(
      {required this.isCharging, required this.isObscure});

  factory _$LoginPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPageModelImplFromJson(json);

  @override
  final bool isCharging;
  @override
  final bool isObscure;

  @override
  String toString() {
    return 'LoginPageModel(isCharging: $isCharging, isObscure: $isObscure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCharging, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageModelImplCopyWith<_$LoginPageModelImpl> get copyWith =>
      __$$LoginPageModelImplCopyWithImpl<_$LoginPageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPageModelImplToJson(
      this,
    );
  }
}

abstract class _LoginPageModel implements LoginPageModel {
  const factory _LoginPageModel(
      {required final bool isCharging,
      required final bool isObscure}) = _$LoginPageModelImpl;

  factory _LoginPageModel.fromJson(Map<String, dynamic> json) =
      _$LoginPageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  bool get isObscure;
  @override
  @JsonKey(ignore: true)
  _$$LoginPageModelImplCopyWith<_$LoginPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
