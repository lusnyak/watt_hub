// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_station_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChooseStationAddressModel _$ChooseStationAddressModelFromJson(
    Map<String, dynamic> json) {
  return _ChooseStationAddressModel.fromJson(json);
}

/// @nodoc
mixin _$ChooseStationAddressModel {
  String? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  /// Serializes this ChooseStationAddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChooseStationAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChooseStationAddressModelCopyWith<ChooseStationAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseStationAddressModelCopyWith<$Res> {
  factory $ChooseStationAddressModelCopyWith(ChooseStationAddressModel value,
          $Res Function(ChooseStationAddressModel) then) =
      _$ChooseStationAddressModelCopyWithImpl<$Res, ChooseStationAddressModel>;
  @useResult
  $Res call({String? address, double? latitude, double? longitude});
}

/// @nodoc
class _$ChooseStationAddressModelCopyWithImpl<$Res,
        $Val extends ChooseStationAddressModel>
    implements $ChooseStationAddressModelCopyWith<$Res> {
  _$ChooseStationAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChooseStationAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseStationAddressModelImplCopyWith<$Res>
    implements $ChooseStationAddressModelCopyWith<$Res> {
  factory _$$ChooseStationAddressModelImplCopyWith(
          _$ChooseStationAddressModelImpl value,
          $Res Function(_$ChooseStationAddressModelImpl) then) =
      __$$ChooseStationAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, double? latitude, double? longitude});
}

/// @nodoc
class __$$ChooseStationAddressModelImplCopyWithImpl<$Res>
    extends _$ChooseStationAddressModelCopyWithImpl<$Res,
        _$ChooseStationAddressModelImpl>
    implements _$$ChooseStationAddressModelImplCopyWith<$Res> {
  __$$ChooseStationAddressModelImplCopyWithImpl(
      _$ChooseStationAddressModelImpl _value,
      $Res Function(_$ChooseStationAddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChooseStationAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$ChooseStationAddressModelImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChooseStationAddressModelImpl implements _ChooseStationAddressModel {
  const _$ChooseStationAddressModelImpl(
      {this.address, this.latitude, this.longitude});

  factory _$ChooseStationAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChooseStationAddressModelImplFromJson(json);

  @override
  final String? address;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'ChooseStationAddressModel(address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseStationAddressModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, latitude, longitude);

  /// Create a copy of ChooseStationAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseStationAddressModelImplCopyWith<_$ChooseStationAddressModelImpl>
      get copyWith => __$$ChooseStationAddressModelImplCopyWithImpl<
          _$ChooseStationAddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChooseStationAddressModelImplToJson(
      this,
    );
  }
}

abstract class _ChooseStationAddressModel implements ChooseStationAddressModel {
  const factory _ChooseStationAddressModel(
      {final String? address,
      final double? latitude,
      final double? longitude}) = _$ChooseStationAddressModelImpl;

  factory _ChooseStationAddressModel.fromJson(Map<String, dynamic> json) =
      _$ChooseStationAddressModelImpl.fromJson;

  @override
  String? get address;
  @override
  double? get latitude;
  @override
  double? get longitude;

  /// Create a copy of ChooseStationAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseStationAddressModelImplCopyWith<_$ChooseStationAddressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
