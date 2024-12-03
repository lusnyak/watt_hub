// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarTypeModel _$CarTypeModelFromJson(Map<String, dynamic> json) {
  return _CarTypeModel.fromJson(json);
}

/// @nodoc
mixin _$CarTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this CarTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarTypeModelCopyWith<CarTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTypeModelCopyWith<$Res> {
  factory $CarTypeModelCopyWith(
          CarTypeModel value, $Res Function(CarTypeModel) then) =
      _$CarTypeModelCopyWithImpl<$Res, CarTypeModel>;
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class _$CarTypeModelCopyWithImpl<$Res, $Val extends CarTypeModel>
    implements $CarTypeModelCopyWith<$Res> {
  _$CarTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarTypeModelImplCopyWith<$Res>
    implements $CarTypeModelCopyWith<$Res> {
  factory _$$CarTypeModelImplCopyWith(
          _$CarTypeModelImpl value, $Res Function(_$CarTypeModelImpl) then) =
      __$$CarTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$CarTypeModelImplCopyWithImpl<$Res>
    extends _$CarTypeModelCopyWithImpl<$Res, _$CarTypeModelImpl>
    implements _$$CarTypeModelImplCopyWith<$Res> {
  __$$CarTypeModelImplCopyWithImpl(
      _$CarTypeModelImpl _value, $Res Function(_$CarTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CarTypeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarTypeModelImpl implements _CarTypeModel {
  const _$CarTypeModelImpl({this.id, this.title});

  factory _$CarTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarTypeModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CarTypeModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTypeModelImplCopyWith<_$CarTypeModelImpl> get copyWith =>
      __$$CarTypeModelImplCopyWithImpl<_$CarTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarTypeModelImplToJson(
      this,
    );
  }
}

abstract class _CarTypeModel implements CarTypeModel {
  const factory _CarTypeModel({final int? id, final String? title}) =
      _$CarTypeModelImpl;

  factory _CarTypeModel.fromJson(Map<String, dynamic> json) =
      _$CarTypeModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarTypeModelImplCopyWith<_$CarTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
