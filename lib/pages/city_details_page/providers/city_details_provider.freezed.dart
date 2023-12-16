// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_details_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityDetailsPageModel _$CityDetailsPageModelFromJson(Map<String, dynamic> json) {
  return _CityDetailsPageModel.fromJson(json);
}

/// @nodoc
mixin _$CityDetailsPageModel {
  bool get isCharging => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  List<bool> get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDetailsPageModelCopyWith<CityDetailsPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDetailsPageModelCopyWith<$Res> {
  factory $CityDetailsPageModelCopyWith(CityDetailsPageModel value,
          $Res Function(CityDetailsPageModel) then) =
      _$CityDetailsPageModelCopyWithImpl<$Res, CityDetailsPageModel>;
  @useResult
  $Res call(
      {bool isCharging, bool isSearching, int index, List<bool> isSelected});
}

/// @nodoc
class _$CityDetailsPageModelCopyWithImpl<$Res,
        $Val extends CityDetailsPageModel>
    implements $CityDetailsPageModelCopyWith<$Res> {
  _$CityDetailsPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isSearching = null,
    Object? index = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDetailsPageModelImplCopyWith<$Res>
    implements $CityDetailsPageModelCopyWith<$Res> {
  factory _$$CityDetailsPageModelImplCopyWith(_$CityDetailsPageModelImpl value,
          $Res Function(_$CityDetailsPageModelImpl) then) =
      __$$CityDetailsPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCharging, bool isSearching, int index, List<bool> isSelected});
}

/// @nodoc
class __$$CityDetailsPageModelImplCopyWithImpl<$Res>
    extends _$CityDetailsPageModelCopyWithImpl<$Res, _$CityDetailsPageModelImpl>
    implements _$$CityDetailsPageModelImplCopyWith<$Res> {
  __$$CityDetailsPageModelImplCopyWithImpl(_$CityDetailsPageModelImpl _value,
      $Res Function(_$CityDetailsPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? isSearching = null,
    Object? index = null,
    Object? isSelected = null,
  }) {
    return _then(_$CityDetailsPageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value._isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDetailsPageModelImpl implements _CityDetailsPageModel {
  const _$CityDetailsPageModelImpl(
      {required this.isCharging,
      required this.isSearching,
      required this.index,
      required final List<bool> isSelected})
      : _isSelected = isSelected;

  factory _$CityDetailsPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDetailsPageModelImplFromJson(json);

  @override
  final bool isCharging;
  @override
  final bool isSearching;
  @override
  final int index;
  final List<bool> _isSelected;
  @override
  List<bool> get isSelected {
    if (_isSelected is EqualUnmodifiableListView) return _isSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isSelected);
  }

  @override
  String toString() {
    return 'CityDetailsPageModel(isCharging: $isCharging, isSearching: $isSearching, index: $index, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDetailsPageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._isSelected, _isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCharging, isSearching, index,
      const DeepCollectionEquality().hash(_isSelected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDetailsPageModelImplCopyWith<_$CityDetailsPageModelImpl>
      get copyWith =>
          __$$CityDetailsPageModelImplCopyWithImpl<_$CityDetailsPageModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDetailsPageModelImplToJson(
      this,
    );
  }
}

abstract class _CityDetailsPageModel implements CityDetailsPageModel {
  const factory _CityDetailsPageModel(
      {required final bool isCharging,
      required final bool isSearching,
      required final int index,
      required final List<bool> isSelected}) = _$CityDetailsPageModelImpl;

  factory _CityDetailsPageModel.fromJson(Map<String, dynamic> json) =
      _$CityDetailsPageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  bool get isSearching;
  @override
  int get index;
  @override
  List<bool> get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$CityDetailsPageModelImplCopyWith<_$CityDetailsPageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
