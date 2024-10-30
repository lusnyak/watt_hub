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
  int get id => throw _privateConstructorUsedError;
  CarTypeModel get carType => throw _privateConstructorUsedError;
  ConnectorTypeModel get connectorType => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  CarModelTypeModel get carModel => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

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
      {int id,
      CarTypeModel carType,
      ConnectorTypeModel connectorType,
      UserModel user,
      CarModelTypeModel carModel,
      List<String> images});

  $CarTypeModelCopyWith<$Res> get carType;
  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  $UserModelCopyWith<$Res> get user;
  $CarModelTypeModelCopyWith<$Res> get carModel;
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
    Object? id = null,
    Object? carType = null,
    Object? connectorType = null,
    Object? user = null,
    Object? carModel = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as CarModelTypeModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res> get carType {
    return $CarTypeModelCopyWith<$Res>(_value.carType, (value) {
      return _then(_value.copyWith(carType: value) as $Val);
    });
  }

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res> get connectorType {
    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorType, (value) {
      return _then(_value.copyWith(connectorType: value) as $Val);
    });
  }

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of CarModel
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
    implements $CarModelCopyWith<$Res> {
  factory _$$CarModelImplCopyWith(
          _$CarModelImpl value, $Res Function(_$CarModelImpl) then) =
      __$$CarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      CarTypeModel carType,
      ConnectorTypeModel connectorType,
      UserModel user,
      CarModelTypeModel carModel,
      List<String> images});

  @override
  $CarTypeModelCopyWith<$Res> get carType;
  @override
  $ConnectorTypeModelCopyWith<$Res> get connectorType;
  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $CarModelTypeModelCopyWith<$Res> get carModel;
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
    Object? id = null,
    Object? carType = null,
    Object? connectorType = null,
    Object? user = null,
    Object? carModel = null,
    Object? images = null,
  }) {
    return _then(_$CarModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel,
      connectorType: null == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      carModel: null == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as CarModelTypeModel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarModelImpl implements _CarModel {
  const _$CarModelImpl(
      {required this.id,
      required this.carType,
      required this.connectorType,
      required this.user,
      required this.carModel,
      required final List<String> images})
      : _images = images;

  factory _$CarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelImplFromJson(json);

  @override
  final int id;
  @override
  final CarTypeModel carType;
  @override
  final ConnectorTypeModel connectorType;
  @override
  final UserModel user;
  @override
  final CarModelTypeModel carModel;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'CarModel(id: $id, carType: $carType, connectorType: $connectorType, user: $user, carModel: $carModel, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, carType, connectorType, user,
      carModel, const DeepCollectionEquality().hash(_images));

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
      {required final int id,
      required final CarTypeModel carType,
      required final ConnectorTypeModel connectorType,
      required final UserModel user,
      required final CarModelTypeModel carModel,
      required final List<String> images}) = _$CarModelImpl;

  factory _CarModel.fromJson(Map<String, dynamic> json) =
      _$CarModelImpl.fromJson;

  @override
  int get id;
  @override
  CarTypeModel get carType;
  @override
  ConnectorTypeModel get connectorType;
  @override
  UserModel get user;
  @override
  CarModelTypeModel get carModel;
  @override
  List<String> get images;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
