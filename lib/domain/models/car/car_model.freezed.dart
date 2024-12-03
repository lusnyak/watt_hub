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

CarModelJson _$CarModelJsonFromJson(Map<String, dynamic> json) {
  return _CarModelJson.fromJson(json);
}

/// @nodoc
mixin _$CarModelJson {
  int? get id => throw _privateConstructorUsedError;
  CarTypeModel? get carType => throw _privateConstructorUsedError;
  ConnectorTypeModel? get connectorType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this CarModelJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarModelJsonCopyWith<CarModelJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelJsonCopyWith<$Res> {
  factory $CarModelJsonCopyWith(
          CarModelJson value, $Res Function(CarModelJson) then) =
      _$CarModelJsonCopyWithImpl<$Res, CarModelJson>;
  @useResult
  $Res call(
      {int? id,
      CarTypeModel? carType,
      ConnectorTypeModel? connectorType,
      List<String>? images,
      UserModel? user,
      String? title});

  $CarTypeModelCopyWith<$Res>? get carType;
  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$CarModelJsonCopyWithImpl<$Res, $Val extends CarModelJson>
    implements $CarModelJsonCopyWith<$Res> {
  _$CarModelJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carType = freezed,
    Object? connectorType = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<$Res>? get carType {
    if (_value.carType == null) {
      return null;
    }

    return $CarTypeModelCopyWith<$Res>(_value.carType!, (value) {
      return _then(_value.copyWith(carType: value) as $Val);
    });
  }

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConnectorTypeModelCopyWith<$Res>? get connectorType {
    if (_value.connectorType == null) {
      return null;
    }

    return $ConnectorTypeModelCopyWith<$Res>(_value.connectorType!, (value) {
      return _then(_value.copyWith(connectorType: value) as $Val);
    });
  }

  /// Create a copy of CarModelJson
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
abstract class _$$CarModelJsonImplCopyWith<$Res>
    implements $CarModelJsonCopyWith<$Res> {
  factory _$$CarModelJsonImplCopyWith(
          _$CarModelJsonImpl value, $Res Function(_$CarModelJsonImpl) then) =
      __$$CarModelJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      CarTypeModel? carType,
      ConnectorTypeModel? connectorType,
      List<String>? images,
      UserModel? user,
      String? title});

  @override
  $CarTypeModelCopyWith<$Res>? get carType;
  @override
  $ConnectorTypeModelCopyWith<$Res>? get connectorType;
  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CarModelJsonImplCopyWithImpl<$Res>
    extends _$CarModelJsonCopyWithImpl<$Res, _$CarModelJsonImpl>
    implements _$$CarModelJsonImplCopyWith<$Res> {
  __$$CarModelJsonImplCopyWithImpl(
      _$CarModelJsonImpl _value, $Res Function(_$CarModelJsonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? carType = freezed,
    Object? connectorType = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CarModelJsonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeModel?,
      connectorType: freezed == connectorType
          ? _value.connectorType
          : connectorType // ignore: cast_nullable_to_non_nullable
              as ConnectorTypeModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CarModelJsonImpl implements _CarModelJson {
  const _$CarModelJsonImpl(
      {this.id,
      this.carType,
      this.connectorType,
      final List<String>? images,
      this.user,
      this.title})
      : _images = images;

  factory _$CarModelJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelJsonImplFromJson(json);

  @override
  final int? id;
  @override
  final CarTypeModel? carType;
  @override
  final ConnectorTypeModel? connectorType;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserModel? user;
  @override
  final String? title;

  @override
  String toString() {
    return 'CarModelJson(id: $id, carType: $carType, connectorType: $connectorType, images: $images, user: $user, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelJsonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.connectorType, connectorType) ||
                other.connectorType == connectorType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, carType, connectorType,
      const DeepCollectionEquality().hash(_images), user, title);

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelJsonImplCopyWith<_$CarModelJsonImpl> get copyWith =>
      __$$CarModelJsonImplCopyWithImpl<_$CarModelJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelJsonImplToJson(
      this,
    );
  }
}

abstract class _CarModelJson implements CarModelJson {
  const factory _CarModelJson(
      {final int? id,
      final CarTypeModel? carType,
      final ConnectorTypeModel? connectorType,
      final List<String>? images,
      final UserModel? user,
      final String? title}) = _$CarModelJsonImpl;

  factory _CarModelJson.fromJson(Map<String, dynamic> json) =
      _$CarModelJsonImpl.fromJson;

  @override
  int? get id;
  @override
  CarTypeModel? get carType;
  @override
  ConnectorTypeModel? get connectorType;
  @override
  List<String>? get images;
  @override
  UserModel? get user;
  @override
  String? get title;

  /// Create a copy of CarModelJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelJsonImplCopyWith<_$CarModelJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
