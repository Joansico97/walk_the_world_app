// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  List<FinishedRoute>? get finishedRoutes => throw _privateConstructorUsedError;
  List<RatedRoute>? get ratedRoutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? fullName,
      String? lastName,
      String? userImage,
      List<FinishedRoute>? finishedRoutes,
      List<RatedRoute>? ratedRoutes});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? lastName = freezed,
    Object? userImage = freezed,
    Object? finishedRoutes = freezed,
    Object? ratedRoutes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      finishedRoutes: freezed == finishedRoutes
          ? _value.finishedRoutes
          : finishedRoutes // ignore: cast_nullable_to_non_nullable
              as List<FinishedRoute>?,
      ratedRoutes: freezed == ratedRoutes
          ? _value.ratedRoutes
          : ratedRoutes // ignore: cast_nullable_to_non_nullable
              as List<RatedRoute>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? fullName,
      String? lastName,
      String? userImage,
      List<FinishedRoute>? finishedRoutes,
      List<RatedRoute>? ratedRoutes});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? lastName = freezed,
    Object? userImage = freezed,
    Object? finishedRoutes = freezed,
    Object? ratedRoutes = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      finishedRoutes: freezed == finishedRoutes
          ? _value._finishedRoutes
          : finishedRoutes // ignore: cast_nullable_to_non_nullable
              as List<FinishedRoute>?,
      ratedRoutes: freezed == ratedRoutes
          ? _value._ratedRoutes
          : ratedRoutes // ignore: cast_nullable_to_non_nullable
              as List<RatedRoute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.id,
      this.name,
      this.email,
      this.fullName,
      this.lastName,
      this.userImage,
      final List<FinishedRoute>? finishedRoutes,
      final List<RatedRoute>? ratedRoutes})
      : _finishedRoutes = finishedRoutes,
        _ratedRoutes = ratedRoutes;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? fullName;
  @override
  final String? lastName;
  @override
  final String? userImage;
  final List<FinishedRoute>? _finishedRoutes;
  @override
  List<FinishedRoute>? get finishedRoutes {
    final value = _finishedRoutes;
    if (value == null) return null;
    if (_finishedRoutes is EqualUnmodifiableListView) return _finishedRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RatedRoute>? _ratedRoutes;
  @override
  List<RatedRoute>? get ratedRoutes {
    final value = _ratedRoutes;
    if (value == null) return null;
    if (_ratedRoutes is EqualUnmodifiableListView) return _ratedRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, fullName: $fullName, lastName: $lastName, userImage: $userImage, finishedRoutes: $finishedRoutes, ratedRoutes: $ratedRoutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            const DeepCollectionEquality()
                .equals(other._finishedRoutes, _finishedRoutes) &&
            const DeepCollectionEquality()
                .equals(other._ratedRoutes, _ratedRoutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      fullName,
      lastName,
      userImage,
      const DeepCollectionEquality().hash(_finishedRoutes),
      const DeepCollectionEquality().hash(_ratedRoutes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final String? id,
      final String? name,
      final String? email,
      final String? fullName,
      final String? lastName,
      final String? userImage,
      final List<FinishedRoute>? finishedRoutes,
      final List<RatedRoute>? ratedRoutes}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get fullName;
  @override
  String? get lastName;
  @override
  String? get userImage;
  @override
  List<FinishedRoute>? get finishedRoutes;
  @override
  List<RatedRoute>? get ratedRoutes;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
