// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddStationModel _$AddStationModelFromJson(Map<String, dynamic> json) {
  return _AddStationModel.fromJson(json);
}

/// @nodoc
mixin _$AddStationModel {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector_type_id')
  int get connectorTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_rate')
  num get hourlyRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this AddStationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddStationModelCopyWith<AddStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStationModelCopyWith<$Res> {
  factory $AddStationModelCopyWith(
          AddStationModel value, $Res Function(AddStationModel) then) =
      _$AddStationModelCopyWithImpl<$Res, AddStationModel>;
  @useResult
  $Res call(
      {String lat,
      String lng,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'connector_type_id') int connectorTypeId,
      @JsonKey(name: 'hourly_rate') num hourlyRate,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? name,
      String address,
      List<String> image,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class _$AddStationModelCopyWithImpl<$Res, $Val extends AddStationModel>
    implements $AddStationModelCopyWith<$Res> {
  _$AddStationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddStationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? connectorTypeId = null,
    Object? hourlyRate = null,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? address = null,
    Object? image = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      connectorTypeId: null == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      hourlyRate: null == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as num,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStationModelImplCopyWith<$Res>
    implements $AddStationModelCopyWith<$Res> {
  factory _$$AddStationModelImplCopyWith(_$AddStationModelImpl value,
          $Res Function(_$AddStationModelImpl) then) =
      __$$AddStationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lat,
      String lng,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'connector_type_id') int connectorTypeId,
      @JsonKey(name: 'hourly_rate') num hourlyRate,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? name,
      String address,
      List<String> image,
      @JsonKey(name: 'user_id') int userId});
}

/// @nodoc
class __$$AddStationModelImplCopyWithImpl<$Res>
    extends _$AddStationModelCopyWithImpl<$Res, _$AddStationModelImpl>
    implements _$$AddStationModelImplCopyWith<$Res> {
  __$$AddStationModelImplCopyWithImpl(
      _$AddStationModelImpl _value, $Res Function(_$AddStationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddStationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? connectorTypeId = null,
    Object? hourlyRate = null,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? address = null,
    Object? image = null,
    Object? userId = null,
  }) {
    return _then(_$AddStationModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      connectorTypeId: null == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      hourlyRate: null == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as num,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStationModelImpl implements _AddStationModel {
  const _$AddStationModelImpl(
      {required this.lat,
      required this.lng,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'connector_type_id') required this.connectorTypeId,
      @JsonKey(name: 'hourly_rate') required this.hourlyRate,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.name,
      required this.address,
      required final List<String> image,
      @JsonKey(name: 'user_id') required this.userId})
      : _image = image;

  factory _$AddStationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStationModelImplFromJson(json);

  @override
  final String lat;
  @override
  final String lng;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'connector_type_id')
  final int connectorTypeId;
  @override
  @JsonKey(name: 'hourly_rate')
  final num hourlyRate;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String address;
  final List<String> _image;
  @override
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  @JsonKey(name: 'user_id')
  final int userId;

  @override
  String toString() {
    return 'AddStationModel(lat: $lat, lng: $lng, startTime: $startTime, endTime: $endTime, connectorTypeId: $connectorTypeId, hourlyRate: $hourlyRate, phoneNumber: $phoneNumber, name: $name, address: $address, image: $image, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStationModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.connectorTypeId, connectorTypeId) ||
                other.connectorTypeId == connectorTypeId) &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lng,
      startTime,
      endTime,
      connectorTypeId,
      hourlyRate,
      phoneNumber,
      name,
      address,
      const DeepCollectionEquality().hash(_image),
      userId);

  /// Create a copy of AddStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStationModelImplCopyWith<_$AddStationModelImpl> get copyWith =>
      __$$AddStationModelImplCopyWithImpl<_$AddStationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStationModelImplToJson(
      this,
    );
  }
}

abstract class _AddStationModel implements AddStationModel {
  const factory _AddStationModel(
      {required final String lat,
      required final String lng,
      @JsonKey(name: 'start_time') required final DateTime startTime,
      @JsonKey(name: 'end_time') required final DateTime endTime,
      @JsonKey(name: 'connector_type_id') required final int connectorTypeId,
      @JsonKey(name: 'hourly_rate') required final num hourlyRate,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? name,
      required final String address,
      required final List<String> image,
      @JsonKey(name: 'user_id')
      required final int userId}) = _$AddStationModelImpl;

  factory _AddStationModel.fromJson(Map<String, dynamic> json) =
      _$AddStationModelImpl.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'connector_type_id')
  int get connectorTypeId;
  @override
  @JsonKey(name: 'hourly_rate')
  num get hourlyRate;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get name;
  @override
  String get address;
  @override
  List<String> get image;
  @override
  @JsonKey(name: 'user_id')
  int get userId;

  /// Create a copy of AddStationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStationModelImplCopyWith<_$AddStationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
