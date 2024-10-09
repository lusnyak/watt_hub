// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charging_station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChargingStationModel _$ChargingStationModelFromJson(Map<String, dynamic> json) {
  return _ChargingStationModel.fromJson(json);
}

/// @nodoc
mixin _$ChargingStationModel {
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  ConnectorTypeModel get connectorType =>
      throw _privateConstructorUsedError; // Use the ConnectorType model
  int get hourlyRate => throw _privateConstructorUsedError; // Changed to int
  int get kwt => throw _privateConstructorUsedError; // Changed to int
  String get phoneNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get image =>
      throw _privateConstructorUsedError; // Changed to List<String>
  String get address => throw _privateConstructorUsedError;
  List<String> get reviews => throw _privateConstructorUsedError;
  double get averageRate => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  /// Serializes this ChargingStationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChargingStationModelCopyWith<ChargingStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargingStationModelCopyWith<$Res> {
  factory $ChargingStationModelCopyWith(ChargingStationModel value,
          $Res Function(ChargingStationModel) then) =
      _$ChargingStationModelCopyWithImpl<$Res, ChargingStationModel>;
  @useResult
  $Res call(
      {int id,
      double latitude,
      double longitude,
      DateTime startTime,
      DateTime endTime,
      ConnectorTypeModel connectorType,
      int hourlyRate,
      int kwt,
      String phoneNumber,
      String name,
      List<String> image,
      String address,
      List<String> reviews,
      double averageRate,
      UserModel user});

  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ChargingStationModelCopyWithImpl<$Res,
        $Val extends ChargingStationModel>
    implements $ChargingStationModelCopyWith<$Res> {
  _$ChargingStationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? connectorType = null,
    Object? hourlyRate = null,
    Object? kwt = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
    Object? reviews = null,
    Object? averageRate = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      hourlyRate: null == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as int,
      kwt: null == kwt
          ? _value.kwt
          : kwt // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRate: null == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res> get connectorType {
    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorType, (value) {
      return _then(_value.copyWith(connectorType: value) as $Val);
    });
  }

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChargingStationModelImplCopyWith<$Res>
    implements $ChargingStationModelCopyWith<$Res> {
  factory _$$ChargingStationModelImplCopyWith(_$ChargingStationModelImpl value,
          $Res Function(_$ChargingStationModelImpl) then) =
      __$$ChargingStationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double latitude,
      double longitude,
      DateTime startTime,
      DateTime endTime,
      ConnectorTypeModel connectorType,
      int hourlyRate,
      int kwt,
      String phoneNumber,
      String name,
      List<String> image,
      String address,
      List<String> reviews,
      double averageRate,
      UserModel user});

  @override
  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChargingStationModelImplCopyWithImpl<$Res>
    extends _$ChargingStationModelCopyWithImpl<$Res, _$ChargingStationModelImpl>
    implements _$$ChargingStationModelImplCopyWith<$Res> {
  __$$ChargingStationModelImplCopyWithImpl(_$ChargingStationModelImpl _value,
      $Res Function(_$ChargingStationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? connectorType = null,
    Object? hourlyRate = null,
    Object? kwt = null,
    Object? phoneNumber = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
    Object? reviews = null,
    Object? averageRate = null,
    Object? user = null,
  }) {
    return _then(_$ChargingStationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      hourlyRate: null == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as int,
      kwt: null == kwt
          ? _value.kwt
          : kwt // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>,
      averageRate: null == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargingStationModelImpl implements _ChargingStationModel {
  const _$ChargingStationModelImpl(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.startTime,
      required this.endTime,
      required this.connectorType,
      required this.hourlyRate,
      required this.kwt,
      required this.phoneNumber,
      required this.name,
      required final List<String> image,
      required this.address,
      required final List<String> reviews,
      required this.averageRate,
      required this.user})
      : _image = image,
        _reviews = reviews;

  factory _$ChargingStationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargingStationModelImplFromJson(json);

  @override
  final int id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final ConnectorTypeModel connectorType;
// Use the ConnectorType model
  @override
  final int hourlyRate;
// Changed to int
  @override
  final int kwt;
// Changed to int
  @override
  final String phoneNumber;
  @override
  final String name;
  final List<String> _image;
  @override
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

// Changed to List<String>
  @override
  final String address;
  final List<String> _reviews;
  @override
  List<String> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final double averageRate;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ChargingStationModel(id: $id, latitude: $latitude, longitude: $longitude, startTime: $startTime, endTime: $endTime, connectorType: $connectorType, hourlyRate: $hourlyRate, kwt: $kwt, phoneNumber: $phoneNumber, name: $name, image: $image, address: $address, reviews: $reviews, averageRate: $averageRate, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargingStationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.kwt, kwt) || other.kwt == kwt) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageRate, averageRate) ||
                other.averageRate == averageRate) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      latitude,
      longitude,
      startTime,
      endTime,
      connectorType,
      hourlyRate,
      kwt,
      phoneNumber,
      name,
      const DeepCollectionEquality().hash(_image),
      address,
      const DeepCollectionEquality().hash(_reviews),
      averageRate,
      user);

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargingStationModelImplCopyWith<_$ChargingStationModelImpl>
      get copyWith =>
          __$$ChargingStationModelImplCopyWithImpl<_$ChargingStationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargingStationModelImplToJson(
      this,
    );
  }
}

abstract class _ChargingStationModel implements ChargingStationModel {
  const factory _ChargingStationModel(
      {required final int id,
      required final double latitude,
      required final double longitude,
      required final DateTime startTime,
      required final DateTime endTime,
      required final ConnectorTypeModel connectorType,
      required final int hourlyRate,
      required final int kwt,
      required final String phoneNumber,
      required final String name,
      required final List<String> image,
      required final String address,
      required final List<String> reviews,
      required final double averageRate,
      required final UserModel user}) = _$ChargingStationModelImpl;

  factory _ChargingStationModel.fromJson(Map<String, dynamic> json) =
      _$ChargingStationModelImpl.fromJson;

  @override
  int get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  ConnectorTypeModel get connectorType; // Use the ConnectorType model
  @override
  int get hourlyRate; // Changed to int
  @override
  int get kwt; // Changed to int
  @override
  String get phoneNumber;
  @override
  String get name;
  @override
  List<String> get image; // Changed to List<String>
  @override
  String get address;
  @override
  List<String> get reviews;
  @override
  double get averageRate;
  @override
  UserModel get user;

  /// Create a copy of ChargingStationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChargingStationModelImplCopyWith<_$ChargingStationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
