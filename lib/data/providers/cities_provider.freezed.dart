// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityProviderModel _$CityProviderModelFromJson(Map<String, dynamic> json) {
  return _CityProviderModel.fromJson(json);
}

/// @nodoc
mixin _$CityProviderModel {
  List<CityModel> get listCities => throw _privateConstructorUsedError;
  List<CityModel> get searchedCities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityProviderModelCopyWith<CityProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityProviderModelCopyWith<$Res> {
  factory $CityProviderModelCopyWith(
          CityProviderModel value, $Res Function(CityProviderModel) then) =
      _$CityProviderModelCopyWithImpl<$Res, CityProviderModel>;
  @useResult
  $Res call({List<CityModel> listCities, List<CityModel> searchedCities});
}

/// @nodoc
class _$CityProviderModelCopyWithImpl<$Res, $Val extends CityProviderModel>
    implements $CityProviderModelCopyWith<$Res> {
  _$CityProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCities = null,
    Object? searchedCities = null,
  }) {
    return _then(_value.copyWith(
      listCities: null == listCities
          ? _value.listCities
          : listCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
      searchedCities: null == searchedCities
          ? _value.searchedCities
          : searchedCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityProviderModelImplCopyWith<$Res>
    implements $CityProviderModelCopyWith<$Res> {
  factory _$$CityProviderModelImplCopyWith(_$CityProviderModelImpl value,
          $Res Function(_$CityProviderModelImpl) then) =
      __$$CityProviderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CityModel> listCities, List<CityModel> searchedCities});
}

/// @nodoc
class __$$CityProviderModelImplCopyWithImpl<$Res>
    extends _$CityProviderModelCopyWithImpl<$Res, _$CityProviderModelImpl>
    implements _$$CityProviderModelImplCopyWith<$Res> {
  __$$CityProviderModelImplCopyWithImpl(_$CityProviderModelImpl _value,
      $Res Function(_$CityProviderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCities = null,
    Object? searchedCities = null,
  }) {
    return _then(_$CityProviderModelImpl(
      listCities: null == listCities
          ? _value._listCities
          : listCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
      searchedCities: null == searchedCities
          ? _value._searchedCities
          : searchedCities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityProviderModelImpl implements _CityProviderModel {
  const _$CityProviderModelImpl(
      {required final List<CityModel> listCities,
      required final List<CityModel> searchedCities})
      : _listCities = listCities,
        _searchedCities = searchedCities;

  factory _$CityProviderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityProviderModelImplFromJson(json);

  final List<CityModel> _listCities;
  @override
  List<CityModel> get listCities {
    if (_listCities is EqualUnmodifiableListView) return _listCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCities);
  }

  final List<CityModel> _searchedCities;
  @override
  List<CityModel> get searchedCities {
    if (_searchedCities is EqualUnmodifiableListView) return _searchedCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedCities);
  }

  @override
  String toString() {
    return 'CityProviderModel(listCities: $listCities, searchedCities: $searchedCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityProviderModelImpl &&
            const DeepCollectionEquality()
                .equals(other._listCities, _listCities) &&
            const DeepCollectionEquality()
                .equals(other._searchedCities, _searchedCities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listCities),
      const DeepCollectionEquality().hash(_searchedCities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityProviderModelImplCopyWith<_$CityProviderModelImpl> get copyWith =>
      __$$CityProviderModelImplCopyWithImpl<_$CityProviderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityProviderModelImplToJson(
      this,
    );
  }
}

abstract class _CityProviderModel implements CityProviderModel {
  const factory _CityProviderModel(
      {required final List<CityModel> listCities,
      required final List<CityModel> searchedCities}) = _$CityProviderModelImpl;

  factory _CityProviderModel.fromJson(Map<String, dynamic> json) =
      _$CityProviderModelImpl.fromJson;

  @override
  List<CityModel> get listCities;
  @override
  List<CityModel> get searchedCities;
  @override
  @JsonKey(ignore: true)
  _$$CityProviderModelImplCopyWith<_$CityProviderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
