// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomePageModel _$HomePageModelFromJson(Map<String, dynamic> json) {
  return _HomePageModel.fromJson(json);
}

/// @nodoc
mixin _$HomePageModel {
  bool get isCharging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageModelCopyWith<HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelCopyWith<$Res> {
  factory $HomePageModelCopyWith(
          HomePageModel value, $Res Function(HomePageModel) then) =
      _$HomePageModelCopyWithImpl<$Res, HomePageModel>;
  @useResult
  $Res call({bool isCharging});
}

/// @nodoc
class _$HomePageModelCopyWithImpl<$Res, $Val extends HomePageModel>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HomePageModelImplCopyWith<$Res>
    implements $HomePageModelCopyWith<$Res> {
  factory _$$HomePageModelImplCopyWith(
          _$HomePageModelImpl value, $Res Function(_$HomePageModelImpl) then) =
      __$$HomePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCharging});
}

/// @nodoc
class __$$HomePageModelImplCopyWithImpl<$Res>
    extends _$HomePageModelCopyWithImpl<$Res, _$HomePageModelImpl>
    implements _$$HomePageModelImplCopyWith<$Res> {
  __$$HomePageModelImplCopyWithImpl(
      _$HomePageModelImpl _value, $Res Function(_$HomePageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
  }) {
    return _then(_$HomePageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageModelImpl implements _HomePageModel {
  const _$HomePageModelImpl({required this.isCharging});

  factory _$HomePageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageModelImplFromJson(json);

  @override
  final bool isCharging;

  @override
  String toString() {
    return 'HomePageModel(isCharging: $isCharging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCharging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      __$$HomePageModelImplCopyWithImpl<_$HomePageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageModelImplToJson(
      this,
    );
  }
}

abstract class _HomePageModel implements HomePageModel {
  const factory _HomePageModel({required final bool isCharging}) =
      _$HomePageModelImpl;

  factory _HomePageModel.fromJson(Map<String, dynamic> json) =
      _$HomePageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  @JsonKey(ignore: true)
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
