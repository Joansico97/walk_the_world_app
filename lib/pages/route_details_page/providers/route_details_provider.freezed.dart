// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_details_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteDetailsPageModel _$RouteDetailsPageModelFromJson(
    Map<String, dynamic> json) {
  return _RouteDetailsPageModel.fromJson(json);
}

/// @nodoc
mixin _$RouteDetailsPageModel {
  int get index => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  List<bool> get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteDetailsPageModelCopyWith<RouteDetailsPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDetailsPageModelCopyWith<$Res> {
  factory $RouteDetailsPageModelCopyWith(RouteDetailsPageModel value,
          $Res Function(RouteDetailsPageModel) then) =
      _$RouteDetailsPageModelCopyWithImpl<$Res, RouteDetailsPageModel>;
  @useResult
  $Res call({int index, bool isPlaying, List<bool> isActive});
}

/// @nodoc
class _$RouteDetailsPageModelCopyWithImpl<$Res,
        $Val extends RouteDetailsPageModel>
    implements $RouteDetailsPageModelCopyWith<$Res> {
  _$RouteDetailsPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isPlaying = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteDetailsPageModelImplCopyWith<$Res>
    implements $RouteDetailsPageModelCopyWith<$Res> {
  factory _$$RouteDetailsPageModelImplCopyWith(
          _$RouteDetailsPageModelImpl value,
          $Res Function(_$RouteDetailsPageModelImpl) then) =
      __$$RouteDetailsPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, bool isPlaying, List<bool> isActive});
}

/// @nodoc
class __$$RouteDetailsPageModelImplCopyWithImpl<$Res>
    extends _$RouteDetailsPageModelCopyWithImpl<$Res,
        _$RouteDetailsPageModelImpl>
    implements _$$RouteDetailsPageModelImplCopyWith<$Res> {
  __$$RouteDetailsPageModelImplCopyWithImpl(_$RouteDetailsPageModelImpl _value,
      $Res Function(_$RouteDetailsPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? isPlaying = null,
    Object? isActive = null,
  }) {
    return _then(_$RouteDetailsPageModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value._isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteDetailsPageModelImpl implements _RouteDetailsPageModel {
  const _$RouteDetailsPageModelImpl(
      {required this.index,
      required this.isPlaying,
      required final List<bool> isActive})
      : _isActive = isActive;

  factory _$RouteDetailsPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteDetailsPageModelImplFromJson(json);

  @override
  final int index;
  @override
  final bool isPlaying;
  final List<bool> _isActive;
  @override
  List<bool> get isActive {
    if (_isActive is EqualUnmodifiableListView) return _isActive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isActive);
  }

  @override
  String toString() {
    return 'RouteDetailsPageModel(index: $index, isPlaying: $isPlaying, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailsPageModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality().equals(other._isActive, _isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, isPlaying,
      const DeepCollectionEquality().hash(_isActive));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailsPageModelImplCopyWith<_$RouteDetailsPageModelImpl>
      get copyWith => __$$RouteDetailsPageModelImplCopyWithImpl<
          _$RouteDetailsPageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteDetailsPageModelImplToJson(
      this,
    );
  }
}

abstract class _RouteDetailsPageModel implements RouteDetailsPageModel {
  const factory _RouteDetailsPageModel(
      {required final int index,
      required final bool isPlaying,
      required final List<bool> isActive}) = _$RouteDetailsPageModelImpl;

  factory _RouteDetailsPageModel.fromJson(Map<String, dynamic> json) =
      _$RouteDetailsPageModelImpl.fromJson;

  @override
  int get index;
  @override
  bool get isPlaying;
  @override
  List<bool> get isActive;
  @override
  @JsonKey(ignore: true)
  _$$RouteDetailsPageModelImplCopyWith<_$RouteDetailsPageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
