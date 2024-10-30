// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarModelTypeModel _$CarModelTypeModelFromJson(Map<String, dynamic> json) {
  return _CarModelTypeModel.fromJson(json);
}

/// @nodoc
mixin _$CarModelTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CarModelTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarModelTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarModelTypeModelCopyWith<CarModelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelTypeModelCopyWith<$Res> {
  factory $CarModelTypeModelCopyWith(
          CarModelTypeModel value, $Res Function(CarModelTypeModel) then) =
      _$CarModelTypeModelCopyWithImpl<$Res, CarModelTypeModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$CarModelTypeModelCopyWithImpl<$Res, $Val extends CarModelTypeModel>
    implements $CarModelTypeModelCopyWith<$Res> {
  _$CarModelTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarModelTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarModelTypeModelImplCopyWith<$Res>
    implements $CarModelTypeModelCopyWith<$Res> {
  factory _$$CarModelTypeModelImplCopyWith(_$CarModelTypeModelImpl value,
          $Res Function(_$CarModelTypeModelImpl) then) =
      __$$CarModelTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$CarModelTypeModelImplCopyWithImpl<$Res>
    extends _$CarModelTypeModelCopyWithImpl<$Res, _$CarModelTypeModelImpl>
    implements _$$CarModelTypeModelImplCopyWith<$Res> {
  __$$CarModelTypeModelImplCopyWithImpl(_$CarModelTypeModelImpl _value,
      $Res Function(_$CarModelTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarModelTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$CarModelTypeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarModelTypeModelImpl implements _CarModelTypeModel {
  const _$CarModelTypeModelImpl({required this.id, required this.title});

  factory _$CarModelTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'CarModelTypeModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of CarModelTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelTypeModelImplCopyWith<_$CarModelTypeModelImpl> get copyWith =>
      __$$CarModelTypeModelImplCopyWithImpl<_$CarModelTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelTypeModelImplToJson(
      this,
    );
  }
}

abstract class _CarModelTypeModel implements CarModelTypeModel {
  const factory _CarModelTypeModel(
      {required final int id,
      required final String title}) = _$CarModelTypeModelImpl;

  factory _CarModelTypeModel.fromJson(Map<String, dynamic> json) =
      _$CarModelTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of CarModelTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelTypeModelImplCopyWith<_$CarModelTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
