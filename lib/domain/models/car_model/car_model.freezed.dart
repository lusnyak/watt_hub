// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get carTypeId => throw _privateConstructorUsedError;
  int? get carModelId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get connectorTypeId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  ConnectorTypeModel? get connectorTypes => throw _privateConstructorUsedError;
  CarTypeModel? get model => throw _privateConstructorUsedError;
  CarTypeModel? get type => throw _privateConstructorUsedError;

  /// Serializes this CarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? carTypeId,
      int? carModelId,
      int? userId,
      int? connectorTypeId,
      DateTime? createdAt,
      DateTime? updatedAt,
      UserModel? user,
      ConnectorTypeModel? connectorTypes,
      CarTypeModel? model,
      CarTypeModel? type});

  $UserModelCopyWith<$Res>? get user;
  $ConnectorTypeModelCopyWith<$Res>? get connectorTypes;
  $CarTypeModelCopyWith<$Res>? get model;
  $CarTypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? carTypeId = freezed,
    Object? carModelId = freezed,
    Object? userId = freezed,
    Object? connectorTypeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? connectorTypes = freezed,
    Object? model = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      carTypeId: freezed == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      carModelId: freezed == carModelId
          ? _value.carModelId
          : carModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      connectorTypeId: freezed == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      connectorTypes: freezed == connectorTypes
          ? _value.connectorTypes
          : connectorTypes // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
    ) as $Val);
  }

  /// Create a copy of CarModel
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

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res>? get connectorTypes {
    if (_value.connectorTypes == null) {
      return null;
    }

    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorTypes!, (value) {
      return _then(_value.copyWith(connectorTypes: value) as $Val);
    });
  }

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $CarTypeModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CarTypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarModelImplCopyWith<$Res>
    implements $CarModelCopyWith<$Res> {
  factory _$$CarModelImplCopyWith(
          _$CarModelImpl value, $Res Function(_$CarModelImpl) then) =
      __$$CarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? carTypeId,
      int? carModelId,
      int? userId,
      int? connectorTypeId,
      DateTime? createdAt,
      DateTime? updatedAt,
      UserModel? user,
      ConnectorTypeModel? connectorTypes,
      CarTypeModel? model,
      CarTypeModel? type});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $ConnectorTypeModelCopyWith<$Res>? get connectorTypes;
  @override
  $CarTypeModelCopyWith<$Res>? get model;
  @override
  $CarTypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$CarModelImplCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$CarModelImpl>
    implements _$$CarModelImplCopyWith<$Res> {
  __$$CarModelImplCopyWithImpl(
      _$CarModelImpl _value, $Res Function(_$CarModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? carTypeId = freezed,
    Object? carModelId = freezed,
    Object? userId = freezed,
    Object? connectorTypeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? connectorTypes = freezed,
    Object? model = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CarModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      carTypeId: freezed == carTypeId
          ? _value.carTypeId
          : carTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      carModelId: freezed == carModelId
          ? _value.carModelId
          : carModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      connectorTypeId: freezed == connectorTypeId
          ? _value.connectorTypeId
          : connectorTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      connectorTypes: freezed == connectorTypes
          ? _value.connectorTypes
          : connectorTypes // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CarModelImpl implements _CarModel {
  const _$CarModelImpl(
      {this.id,
      this.name,
      this.image,
      this.carTypeId,
      this.carModelId,
      this.userId,
      this.connectorTypeId,
      this.createdAt,
      this.updatedAt,
      this.user,
      this.connectorTypes,
      this.model,
      this.type});

  factory _$CarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? carTypeId;
  @override
  final int? carModelId;
  @override
  final int? userId;
  @override
  final int? connectorTypeId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final UserModel? user;
  @override
  final ConnectorTypeModel? connectorTypes;
  @override
  final CarTypeModel? model;
  @override
  final CarTypeModel? type;

  @override
  String toString() {
    return 'CarModel(id: $id, name: $name, image: $image, carTypeId: $carTypeId, carModelId: $carModelId, userId: $userId, connectorTypeId: $connectorTypeId, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, connectorTypes: $connectorTypes, model: $model, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.carTypeId, carTypeId) ||
                other.carTypeId == carTypeId) &&
            (identical(other.carModelId, carModelId) ||
                other.carModelId == carModelId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.connectorTypeId, connectorTypeId) ||
                other.connectorTypeId == connectorTypeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.connectorTypes, connectorTypes) ||
                other.connectorTypes == connectorTypes) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      carTypeId,
      carModelId,
      userId,
      connectorTypeId,
      createdAt,
      updatedAt,
      user,
      connectorTypes,
      model,
      type);

  /// Create a copy of CarModel
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

abstract class _CarModel implements CarModel {
  const factory _CarModel(
      {final int? id,
      final String? name,
      final String? image,
      final int? carTypeId,
      final int? carModelId,
      final int? userId,
      final int? connectorTypeId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final UserModel? user,
      final ConnectorTypeModel? connectorTypes,
      final CarTypeModel? model,
      final CarTypeModel? type}) = _$CarModelImpl;

  factory _CarModel.fromJson(Map<String, dynamic> json) =
      _$CarModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get carTypeId;
  @override
  int? get carModelId;
  @override
  int? get userId;
  @override
  int? get connectorTypeId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  UserModel? get user;
  @override
  ConnectorTypeModel? get connectorTypes;
  @override
  CarTypeModel? get model;
  @override
  CarTypeModel? get type;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
