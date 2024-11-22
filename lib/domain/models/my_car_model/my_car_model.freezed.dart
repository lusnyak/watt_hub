// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyCarModel _$MyCarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$MyCarModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get carTypeId => throw _privateConstructorUsedError;
  int get carModelId => throw _privateConstructorUsedError;
  int get connectorTypeId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  CarTypeModel get carType => throw _privateConstructorUsedError;
  ConnectorTypeModel get connectorType => throw _privateConstructorUsedError;
  CarModelTypeModel get carModel => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;

  /// Serializes this MyCarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyCarModelCopyWith<MyCarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCarModelCopyWith<$Res> {
  factory $MyCarModelCopyWith(
          MyCarModel value, $Res Function(MyCarModel) then) =
      _$MyCarModelCopyWithImpl<$Res, MyCarModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int carTypeId,
      int carModelId,
      int connectorTypeId,
      int userId,
      DateTime createdAt,
      DateTime updatedAt,
      UserModel user,
      CarTypeModel carType,
      ConnectorTypeModel connectorType,
      CarModelTypeModel carModel,
      String images});

  $UserModelCopyWith<$Res> get user;
  $CarTypeModelCopyWith<$Res> get carType;
  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  $CarModelTypeModelCopyWith<$Res> get carModel;
}

/// @nodoc
class _$MyCarModelCopyWithImpl<$Res, $Val extends MyCarModel>
    implements $MyCarModelCopyWith<$Res> {
  _$MyCarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? carTypeId = null,
    Object? carModelId = null,
    Object? connectorTypeId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
    Object? carType = null,
    Object? connectorType = null,
    Object? carModel = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      carModelId: null == carModelId
          ? _value.carModelId
          : carModelId // ignore: cast_nullable_to_non_nullable
              as int,
      connectorTypeId: null == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as CarModelTypeModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res> get carType {
    return $CarTypeModelCopyWith<$Res>(_value.carType, (value) {
      return _then(_value.copyWith(carType: value) as $Val);
    });
  }

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res> get connectorType {
    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorType, (value) {
      return _then(_value.copyWith(connectorType: value) as $Val);
    });
  }

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarModelTypeModelCopyWith<$Res> get carModel {
    return $CarModelTypeModelCopyWith<$Res>(_value.carModel, (value) {
      return _then(_value.copyWith(carModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarModelImplCopyWith<$Res>
    implements $MyCarModelCopyWith<$Res> {
  factory _$$CarModelImplCopyWith(
          _$CarModelImpl value, $Res Function(_$CarModelImpl) then) =
      __$$CarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int carTypeId,
      int carModelId,
      int connectorTypeId,
      int userId,
      DateTime createdAt,
      DateTime updatedAt,
      UserModel user,
      CarTypeModel carType,
      ConnectorTypeModel connectorType,
      CarModelTypeModel carModel,
      String images});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $CarTypeModelCopyWith<$Res> get carType;
  @override
  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  @override
  $CarModelTypeModelCopyWith<$Res> get carModel;
}

/// @nodoc
class __$$CarModelImplCopyWithImpl<$Res>
    extends _$MyCarModelCopyWithImpl<$Res, _$CarModelImpl>
    implements _$$CarModelImplCopyWith<$Res> {
  __$$CarModelImplCopyWithImpl(
      _$CarModelImpl _value, $Res Function(_$CarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? carTypeId = null,
    Object? carModelId = null,
    Object? connectorTypeId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
    Object? carType = null,
    Object? connectorType = null,
    Object? carModel = null,
    Object? images = null,
  }) {
    return _then(_$CarModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carTypeId: null == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      carModelId: null == carModelId
          ? _value.carModelId
          : carModelId // ignore: cast_nullable_to_non_nullable
              as int,
      connectorTypeId: null == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as CarModelTypeModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CarModelImpl implements _CarModel {
  const _$CarModelImpl(
      {required this.id,
      required this.name,
      required this.carTypeId,
      required this.carModelId,
      required this.connectorTypeId,
      required this.userId,
      required this.createdAt,
      required this.updatedAt,
      required this.user,
      required this.carType,
      required this.connectorType,
      required this.carModel,
      required this.images});

  factory _$CarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int carTypeId;
  @override
  final int carModelId;
  @override
  final int connectorTypeId;
  @override
  final int userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final UserModel user;
  @override
  final CarTypeModel carType;
  @override
  final ConnectorTypeModel connectorType;
  @override
  final CarModelTypeModel carModel;
  @override
  final String images;

  @override
  String toString() {
    return 'MyCarModel(id: $id, name: $name, carTypeId: $carTypeId, carModelId: $carModelId, connectorTypeId: $connectorTypeId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, carType: $carType, connectorType: $connectorType, carModel: $carModel, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.carModelId, carModelId) ||
                other.carModelId == carModelId) &&
            (identical(other.connectorTypeId, connectorTypeId) ||
                other.connectorTypeId == connectorTypeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      carTypeId,
      carModelId,
      connectorTypeId,
      userId,
      createdAt,
      updatedAt,
      user,
      carType,
      connectorType,
      carModel,
      images);

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      __$$CarModelImplCopyWithImpl<_$CarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelImplToJson(
      this,
    );
  }
}

abstract class _CarModel implements MyCarModel {
  const factory _CarModel(
      {required final int id,
      required final String name,
      required final int carTypeId,
      required final int carModelId,
      required final int connectorTypeId,
      required final int userId,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final UserModel user,
      required final CarTypeModel carType,
      required final ConnectorTypeModel connectorType,
      required final CarModelTypeModel carModel,
      required final String images}) = _$CarModelImpl;

  factory _CarModel.fromJson(Map<String, dynamic> json) =
      _$CarModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get carTypeId;
  @override
  int get carModelId;
  @override
  int get connectorTypeId;
  @override
  int get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  UserModel get user;
  @override
  CarTypeModel get carType;
  @override
  ConnectorTypeModel get connectorType;
  @override
  CarModelTypeModel get carModel;
  @override
  String get images;

  /// Create a copy of MyCarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
