// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connector_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConnectorTypeModel _$ConnectorTypeModelFromJson(Map<String, dynamic> json) {
  return _ConnectorTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectorTypeModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ConnectorTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConnectorTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectorTypeModelCopyWith<ConnectorTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectorTypeModelCopyWith<$Res> {
  factory $ConnectorTypeModelCopyWith(
          ConnectorTypeModel value, $Res Function(ConnectorTypeModel) then) =
      _$ConnectorTypeModelCopyWithImpl<$Res, ConnectorTypeModel>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$ConnectorTypeModelCopyWithImpl<$Res, $Val extends ConnectorTypeModel>
    implements $ConnectorTypeModelCopyWith<$Res> {
  _$ConnectorTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectorTypeModel
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
abstract class _$$ConnectorTypeModelImplCopyWith<$Res>
    implements $ConnectorTypeModelCopyWith<$Res> {
  factory _$$ConnectorTypeModelImplCopyWith(_$ConnectorTypeModelImpl value,
          $Res Function(_$ConnectorTypeModelImpl) then) =
      __$$ConnectorTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$ConnectorTypeModelImplCopyWithImpl<$Res>
    extends _$ConnectorTypeModelCopyWithImpl<$Res, _$ConnectorTypeModelImpl>
    implements _$$ConnectorTypeModelImplCopyWith<$Res> {
  __$$ConnectorTypeModelImplCopyWithImpl(_$ConnectorTypeModelImpl _value,
      $Res Function(_$ConnectorTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectorTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ConnectorTypeModelImpl(
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
class _$ConnectorTypeModelImpl implements _ConnectorTypeModel {
  const _$ConnectorTypeModelImpl({required this.id, required this.title});

  factory _$ConnectorTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectorTypeModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'ConnectorTypeModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ConnectorTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectorTypeModelImplCopyWith<_$ConnectorTypeModelImpl> get copyWith =>
      __$$ConnectorTypeModelImplCopyWithImpl<_$ConnectorTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectorTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectorTypeModel implements ConnectorTypeModel {
  const factory _ConnectorTypeModel(
      {required final int id,
      required final String title}) = _$ConnectorTypeModelImpl;

  factory _ConnectorTypeModel.fromJson(Map<String, dynamic> json) =
      _$ConnectorTypeModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of ConnectorTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectorTypeModelImplCopyWith<_$ConnectorTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
