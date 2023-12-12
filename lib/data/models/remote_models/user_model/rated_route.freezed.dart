// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rated_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatedRoute _$RatedRouteFromJson(Map<String, dynamic> json) {
  return _RatedRoute.fromJson(json);
}

/// @nodoc
mixin _$RatedRoute {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatedRouteCopyWith<RatedRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatedRouteCopyWith<$Res> {
  factory $RatedRouteCopyWith(
          RatedRoute value, $Res Function(RatedRoute) then) =
      _$RatedRouteCopyWithImpl<$Res, RatedRoute>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$RatedRouteCopyWithImpl<$Res, $Val extends RatedRoute>
    implements $RatedRouteCopyWith<$Res> {
  _$RatedRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatedRouteImplCopyWith<$Res>
    implements $RatedRouteCopyWith<$Res> {
  factory _$$RatedRouteImplCopyWith(
          _$RatedRouteImpl value, $Res Function(_$RatedRouteImpl) then) =
      __$$RatedRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$RatedRouteImplCopyWithImpl<$Res>
    extends _$RatedRouteCopyWithImpl<$Res, _$RatedRouteImpl>
    implements _$$RatedRouteImplCopyWith<$Res> {
  __$$RatedRouteImplCopyWithImpl(
      _$RatedRouteImpl _value, $Res Function(_$RatedRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RatedRouteImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatedRouteImpl implements _RatedRoute {
  _$RatedRouteImpl({this.id, this.name});

  factory _$RatedRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatedRouteImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'RatedRoute(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatedRouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatedRouteImplCopyWith<_$RatedRouteImpl> get copyWith =>
      __$$RatedRouteImplCopyWithImpl<_$RatedRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatedRouteImplToJson(
      this,
    );
  }
}

abstract class _RatedRoute implements RatedRoute {
  factory _RatedRoute({final String? id, final String? name}) =
      _$RatedRouteImpl;

  factory _RatedRoute.fromJson(Map<String, dynamic> json) =
      _$RatedRouteImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$RatedRouteImplCopyWith<_$RatedRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
