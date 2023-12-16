// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_details_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDetailsPageModel _$RestaurantDetailsPageModelFromJson(
    Map<String, dynamic> json) {
  return _RestaurantDetailsPageModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDetailsPageModel {
  int get index => throw _privateConstructorUsedError;
  List<bool> get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDetailsPageModelCopyWith<RestaurantDetailsPageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDetailsPageModelCopyWith<$Res> {
  factory $RestaurantDetailsPageModelCopyWith(RestaurantDetailsPageModel value,
          $Res Function(RestaurantDetailsPageModel) then) =
      _$RestaurantDetailsPageModelCopyWithImpl<$Res,
          RestaurantDetailsPageModel>;
  @useResult
  $Res call({int index, List<bool> isActive});
}

/// @nodoc
class _$RestaurantDetailsPageModelCopyWithImpl<$Res,
        $Val extends RestaurantDetailsPageModel>
    implements $RestaurantDetailsPageModelCopyWith<$Res> {
  _$RestaurantDetailsPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantDetailsPageModelImplCopyWith<$Res>
    implements $RestaurantDetailsPageModelCopyWith<$Res> {
  factory _$$RestaurantDetailsPageModelImplCopyWith(
          _$RestaurantDetailsPageModelImpl value,
          $Res Function(_$RestaurantDetailsPageModelImpl) then) =
      __$$RestaurantDetailsPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<bool> isActive});
}

/// @nodoc
class __$$RestaurantDetailsPageModelImplCopyWithImpl<$Res>
    extends _$RestaurantDetailsPageModelCopyWithImpl<$Res,
        _$RestaurantDetailsPageModelImpl>
    implements _$$RestaurantDetailsPageModelImplCopyWith<$Res> {
  __$$RestaurantDetailsPageModelImplCopyWithImpl(
      _$RestaurantDetailsPageModelImpl _value,
      $Res Function(_$RestaurantDetailsPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isActive = null,
  }) {
    return _then(_$RestaurantDetailsPageModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value._isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantDetailsPageModelImpl implements _RestaurantDetailsPageModel {
  const _$RestaurantDetailsPageModelImpl(
      {required this.index, required final List<bool> isActive})
      : _isActive = isActive;

  factory _$RestaurantDetailsPageModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RestaurantDetailsPageModelImplFromJson(json);

  @override
  final int index;
  final List<bool> _isActive;
  @override
  List<bool> get isActive {
    if (_isActive is EqualUnmodifiableListView) return _isActive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isActive);
  }

  @override
  String toString() {
    return 'RestaurantDetailsPageModel(index: $index, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantDetailsPageModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._isActive, _isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_isActive));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantDetailsPageModelImplCopyWith<_$RestaurantDetailsPageModelImpl>
      get copyWith => __$$RestaurantDetailsPageModelImplCopyWithImpl<
          _$RestaurantDetailsPageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantDetailsPageModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurantDetailsPageModel
    implements RestaurantDetailsPageModel {
  const factory _RestaurantDetailsPageModel(
      {required final int index,
      required final List<bool> isActive}) = _$RestaurantDetailsPageModelImpl;

  factory _RestaurantDetailsPageModel.fromJson(Map<String, dynamic> json) =
      _$RestaurantDetailsPageModelImpl.fromJson;

  @override
  int get index;
  @override
  List<bool> get isActive;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantDetailsPageModelImplCopyWith<_$RestaurantDetailsPageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
