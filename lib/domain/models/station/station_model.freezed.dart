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
  int? get id => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int? get connectorTypeId => throw _privateConstructorUsedError;
  List<ConnectorTypeModel>? get connectorTypes =>
      throw _privateConstructorUsedError;
  String? get hourlyRate =>
      throw _privateConstructorUsedError; // Todo: Need to change double
  num? get kwt => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError; // List<String>
  List<ReviewModel>? get reviews => throw _privateConstructorUsedError;
  double? get averageRate => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  List<OrderModel>? get orders => throw _privateConstructorUsedError;

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
      {int? id,
      double? lat,
      double? lng,
      DateTime? startTime,
      DateTime? endTime,
      int? connectorTypeId,
      List<ConnectorTypeModel>? connectorTypes,
      String? hourlyRate,
      num? kwt,
      String? phoneNumber,
      String? name,
      String? address,
      String? image,
      List<ReviewModel>? reviews,
      double? averageRate,
      int? userId,
      UserModel? user,
      List<OrderModel>? orders});

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
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? connectorTypeId = freezed,
    Object? connectorTypes = freezed,
    Object? hourlyRate = freezed,
    Object? kwt = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? image = freezed,
    Object? reviews = freezed,
    Object? averageRate = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      connectorTypeId: freezed == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      connectorTypes: freezed == connectorTypes
          ? _value.connectorTypes
          : connectorTypes // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>?,
      hourlyRate: freezed == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
      averageRate: freezed == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
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
      {int? id,
      double? lat,
      double? lng,
      DateTime? startTime,
      DateTime? endTime,
      int? connectorTypeId,
      List<ConnectorTypeModel>? connectorTypes,
      String? hourlyRate,
      num? kwt,
      String? phoneNumber,
      String? name,
      String? address,
      String? image,
      List<ReviewModel>? reviews,
      double? averageRate,
      int? userId,
      UserModel? user,
      List<OrderModel>? orders});

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
    Object? id = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? connectorTypeId = freezed,
    Object? connectorTypes = freezed,
    Object? hourlyRate = freezed,
    Object? kwt = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? image = freezed,
    Object? reviews = freezed,
    Object? averageRate = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$StationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      connectorTypeId: freezed == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      connectorTypes: freezed == connectorTypes
          ? _value._connectorTypes
          : connectorTypes // ignore: cast_nullable_to_non_nullable
              as List<ConnectorTypeModel>?,
      hourlyRate: freezed == hourlyRate
          ? _value.hourlyRate
          : hourlyRate // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
      averageRate: freezed == averageRate
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$StationModelImpl implements _StationModel {
  const _$StationModelImpl(
      {this.id,
      this.lat,
      this.lng,
      this.startTime,
      this.endTime,
      this.connectorTypeId,
      final List<ConnectorTypeModel>? connectorTypes,
      this.hourlyRate,
      this.kwt,
      this.phoneNumber,
      this.name,
      this.address,
      this.image,
      final List<ReviewModel>? reviews,
      this.averageRate,
      this.userId,
      this.user,
      final List<OrderModel>? orders})
      : _connectorTypes = connectorTypes,
        _reviews = reviews,
        _orders = orders;

  factory _$StationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationModelImplFromJson(json);

  @override
  final int? id;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final int? connectorTypeId;
  final List<ConnectorTypeModel>? _connectorTypes;
  @override
  List<ConnectorTypeModel>? get connectorTypes {
    final value = _connectorTypes;
    if (value == null) return null;
    if (_connectorTypes is EqualUnmodifiableListView) return _connectorTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? hourlyRate;
// Todo: Need to change double
  @override
  final num? kwt;
  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? image;
// List<String>
  final List<ReviewModel>? _reviews;
// List<String>
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
  final int? userId;
  @override
  final UserModel? user;
  final List<OrderModel>? _orders;
  @override
  List<OrderModel>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StationModel(id: $id, lat: $lat, lng: $lng, startTime: $startTime, endTime: $endTime, connectorTypeId: $connectorTypeId, connectorTypes: $connectorTypes, hourlyRate: $hourlyRate, kwt: $kwt, phoneNumber: $phoneNumber, name: $name, address: $address, image: $image, reviews: $reviews, averageRate: $averageRate, userId: $userId, user: $user, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.connectorTypeId, connectorTypeId) ||
                other.connectorTypeId == connectorTypeId) &&
            const DeepCollectionEquality()
                .equals(other._connectorTypes, _connectorTypes) &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.kwt, kwt) || other.kwt == kwt) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageRate, averageRate) ||
                other.averageRate == averageRate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lat,
      lng,
      startTime,
      endTime,
      connectorTypeId,
      const DeepCollectionEquality().hash(_connectorTypes),
      hourlyRate,
      kwt,
      phoneNumber,
      name,
      address,
      image,
      const DeepCollectionEquality().hash(_reviews),
      averageRate,
      userId,
      user,
      const DeepCollectionEquality().hash(_orders));

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
      {final int? id,
      final double? lat,
      final double? lng,
      final DateTime? startTime,
      final DateTime? endTime,
      final int? connectorTypeId,
      final List<ConnectorTypeModel>? connectorTypes,
      final String? hourlyRate,
      final num? kwt,
      final String? phoneNumber,
      final String? name,
      final String? address,
      final String? image,
      final List<ReviewModel>? reviews,
      final double? averageRate,
      final int? userId,
      final UserModel? user,
      final List<OrderModel>? orders}) = _$StationModelImpl;

  factory _StationModel.fromJson(Map<String, dynamic> json) =
      _$StationModelImpl.fromJson;

  @override
  int? get id;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;
  @override
  int? get connectorTypeId;
  @override
  List<ConnectorTypeModel>? get connectorTypes;
  @override
  String? get hourlyRate; // Todo: Need to change double
  @override
  num? get kwt;
  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get image; // List<String>
  @override
  List<ReviewModel>? get reviews;
  @override
  double? get averageRate;
  @override
  int? get userId;
  @override
  UserModel? get user;
  @override
  List<OrderModel>? get orders;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationModelImplCopyWith<_$StationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
