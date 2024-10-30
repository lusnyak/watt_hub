// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StationModel _$StationModelFromJson(Map<String, dynamic> json) {
  return _StationModel.fromJson(json);
}

/// @nodoc
mixin _$StationModel {
  int get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  List<ConnectorTypeModel>? get connectorType =>
      throw _privateConstructorUsedError;
  num? get hourlyRate => throw _privateConstructorUsedError;
  num? get kwt => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get image => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<ReviewModel>? get reviews => throw _privateConstructorUsedError;
  double? get averageRate => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Serializes this StationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationModelCopyWith<StationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationModelCopyWith<$Res> {
  factory $StationModelCopyWith(
          StationModel value, $Res Function(StationModel) then) =
      _$StationModelCopyWithImpl<$Res, StationModel>;
  @useResult
  $Res call(
      {int id,
      double latitude,
      double longitude,
      DateTime? startTime,
      DateTime? endTime,
      List<ConnectorTypeModel>? connectorType,
      num? hourlyRate,
      num? kwt,
      String? phoneNumber,
      String? name,
      List<String>? image,
      String? address,
      List<ReviewModel>? reviews,
      double? averageRate,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$StationModelCopyWithImpl<$Res, $Val extends StationModel>
    implements $StationModelCopyWith<$Res> {
  _$StationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? connectorType = freezed,
    Object? hourlyRate = freezed,
    Object? kwt = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? reviews = freezed,
    Object? averageRate = freezed,
    Object? user = freezed,
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
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>?,
      hourlyRate: freezed == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as num?,
      kwt: freezed == kwt
          ? _value.kwt
          : kwt // ignore: cast_nullable_to_non_nullable
              as num?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
      averageRate: freezed == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StationModelImplCopyWith<$Res>
    implements $StationModelCopyWith<$Res> {
  factory _$$StationModelImplCopyWith(
          _$StationModelImpl value, $Res Function(_$StationModelImpl) then) =
      __$$StationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double latitude,
      double longitude,
      DateTime? startTime,
      DateTime? endTime,
      List<ConnectorTypeModel>? connectorType,
      num? hourlyRate,
      num? kwt,
      String? phoneNumber,
      String? name,
      List<String>? image,
      String? address,
      List<ReviewModel>? reviews,
      double? averageRate,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StationModelImplCopyWithImpl<$Res>
    extends _$StationModelCopyWithImpl<$Res, _$StationModelImpl>
    implements _$$StationModelImplCopyWith<$Res> {
  __$$StationModelImplCopyWithImpl(
      _$StationModelImpl _value, $Res Function(_$StationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? connectorType = freezed,
    Object? hourlyRate = freezed,
    Object? kwt = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? reviews = freezed,
    Object? averageRate = freezed,
    Object? user = freezed,
  }) {
    return _then(_$StationModelImpl(
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
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      connectorType: freezed == connectorType
          ? _value._connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>?,
      hourlyRate: freezed == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as num?,
      kwt: freezed == kwt
          ? _value.kwt
          : kwt // ignore: cast_nullable_to_non_nullable
              as num?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
      averageRate: freezed == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$StationModelImpl implements _StationModel {
  const _$StationModelImpl(
      {required this.id,
      required this.latitude,
      required this.longitude,
      this.startTime,
      this.endTime,
      final List<ConnectorTypeModel>? connectorType,
      this.hourlyRate,
      this.kwt,
      this.phoneNumber,
      this.name,
      final List<String>? image,
      this.address,
      final List<ReviewModel>? reviews,
      this.averageRate,
      this.user})
      : _connectorType = connectorType,
        _image = image,
        _reviews = reviews;

  factory _$StationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationModelImplFromJson(json);

  @override
  final int id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  final List<ConnectorTypeModel>? _connectorType;
  @override
  List<ConnectorTypeModel>? get connectorType {
    final value = _connectorType;
    if (value == null) return null;
    if (_connectorType is EqualUnmodifiableListView) return _connectorType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? hourlyRate;
  @override
  final num? kwt;
  @override
  final String? phoneNumber;
  @override
  final String? name;
  final List<String>? _image;
  @override
  List<String>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? address;
  final List<ReviewModel>? _reviews;
  @override
  List<ReviewModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? averageRate;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'StationModel(id: $id, latitude: $latitude, longitude: $longitude, startTime: $startTime, endTime: $endTime, connectorType: $connectorType, hourlyRate: $hourlyRate, kwt: $kwt, phoneNumber: $phoneNumber, name: $name, image: $image, address: $address, reviews: $reviews, averageRate: $averageRate, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._connectorType, _connectorType) &&
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
      const DeepCollectionEquality().hash(_connectorType),
      hourlyRate,
      kwt,
      phoneNumber,
      name,
      const DeepCollectionEquality().hash(_image),
      address,
      const DeepCollectionEquality().hash(_reviews),
      averageRate,
      user);

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationModelImplCopyWith<_$StationModelImpl> get copyWith =>
      __$$StationModelImplCopyWithImpl<_$StationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationModelImplToJson(
      this,
    );
  }
}

abstract class _StationModel implements StationModel {
  const factory _StationModel(
      {required final int id,
      required final double latitude,
      required final double longitude,
      final DateTime? startTime,
      final DateTime? endTime,
      final List<ConnectorTypeModel>? connectorType,
      final num? hourlyRate,
      final num? kwt,
      final String? phoneNumber,
      final String? name,
      final List<String>? image,
      final String? address,
      final List<ReviewModel>? reviews,
      final double? averageRate,
      final UserModel? user}) = _$StationModelImpl;

  factory _StationModel.fromJson(Map<String, dynamic> json) =
      _$StationModelImpl.fromJson;

  @override
  int get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  List<ConnectorTypeModel>? get connectorType;
  @override
  num? get hourlyRate;
  @override
  num? get kwt;
  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  List<String>? get image;
  @override
  String? get address;
  @override
  List<ReviewModel>? get reviews;
  @override
  double? get averageRate;
  @override
  UserModel? get user;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationModelImplCopyWith<_$StationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
