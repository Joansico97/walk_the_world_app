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
  bool get isSearching => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get cities => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get searchedCities =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {bool isCharging,
      bool isSearching,
      List<Map<String, dynamic>> cities,
      List<Map<String, dynamic>> searchedCities});
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
    Object? isSearching = null,
    Object? cities = null,
    Object? searchedCities = null,
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
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      searchedCities: null == searchedCities
          ? _value.searchedCities
          : searchedCities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
  $Res call(
      {bool isCharging,
      bool isSearching,
      List<Map<String, dynamic>> cities,
      List<Map<String, dynamic>> searchedCities});
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
    Object? isSearching = null,
    Object? cities = null,
    Object? searchedCities = null,
  }) {
    return _then(_$HomePageModelImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      searchedCities: null == searchedCities
          ? _value._searchedCities
          : searchedCities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageModelImpl implements _HomePageModel {
  const _$HomePageModelImpl(
      {required this.isCharging,
      required this.isSearching,
      required final List<Map<String, dynamic>> cities,
      required final List<Map<String, dynamic>> searchedCities})
      : _cities = cities,
        _searchedCities = searchedCities;

  factory _$HomePageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageModelImplFromJson(json);

  @override
  final bool isCharging;
  @override
  final bool isSearching;
  final List<Map<String, dynamic>> _cities;
  @override
  List<Map<String, dynamic>> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<Map<String, dynamic>> _searchedCities;
  @override
  List<Map<String, dynamic>> get searchedCities {
    if (_searchedCities is EqualUnmodifiableListView) return _searchedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedCities);
  }

  @override
  String toString() {
    return 'HomePageModel(isCharging: $isCharging, isSearching: $isSearching, cities: $cities, searchedCities: $searchedCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._searchedCities, _searchedCities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCharging,
      isSearching,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_searchedCities));

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
  const factory _HomePageModel(
          {required final bool isCharging,
          required final bool isSearching,
          required final List<Map<String, dynamic>> cities,
          required final List<Map<String, dynamic>> searchedCities}) =
      _$HomePageModelImpl;

  factory _HomePageModel.fromJson(Map<String, dynamic> json) =
      _$HomePageModelImpl.fromJson;

  @override
  bool get isCharging;
  @override
  bool get isSearching;
  @override
  List<Map<String, dynamic>> get cities;
  @override
  List<Map<String, dynamic>> get searchedCities;
  @override
  @JsonKey(ignore: true)
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
