// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finished_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinishedRoute _$FinishedRouteFromJson(Map<String, dynamic> json) {
  return _FinishedRoute.fromJson(json);
}

/// @nodoc
mixin _$FinishedRoute {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishedRouteCopyWith<FinishedRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedRouteCopyWith<$Res> {
  factory $FinishedRouteCopyWith(
          FinishedRoute value, $Res Function(FinishedRoute) then) =
      _$FinishedRouteCopyWithImpl<$Res, FinishedRoute>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$FinishedRouteCopyWithImpl<$Res, $Val extends FinishedRoute>
    implements $FinishedRouteCopyWith<$Res> {
  _$FinishedRouteCopyWithImpl(this._value, this._then);

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
abstract class _$$FinishedRouteImplCopyWith<$Res>
    implements $FinishedRouteCopyWith<$Res> {
  factory _$$FinishedRouteImplCopyWith(
          _$FinishedRouteImpl value, $Res Function(_$FinishedRouteImpl) then) =
      __$$FinishedRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$FinishedRouteImplCopyWithImpl<$Res>
    extends _$FinishedRouteCopyWithImpl<$Res, _$FinishedRouteImpl>
    implements _$$FinishedRouteImplCopyWith<$Res> {
  __$$FinishedRouteImplCopyWithImpl(
      _$FinishedRouteImpl _value, $Res Function(_$FinishedRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FinishedRouteImpl(
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
class _$FinishedRouteImpl implements _FinishedRoute {
  _$FinishedRouteImpl({this.id, this.name});

  factory _$FinishedRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishedRouteImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'FinishedRoute(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishedRouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishedRouteImplCopyWith<_$FinishedRouteImpl> get copyWith =>
      __$$FinishedRouteImplCopyWithImpl<_$FinishedRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishedRouteImplToJson(
      this,
    );
  }
}

abstract class _FinishedRoute implements FinishedRoute {
  factory _FinishedRoute({final String? id, final String? name}) =
      _$FinishedRouteImpl;

  factory _FinishedRoute.fromJson(Map<String, dynamic> json) =
      _$FinishedRouteImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FinishedRouteImplCopyWith<_$FinishedRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
