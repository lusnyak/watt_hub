import 'package:freezed_annotation/freezed_annotation.dart';

part 'connector_type_model.freezed.dart';
part 'connector_type_model.g.dart';

@freezed
class ConnectorTypeModel with _$ConnectorTypeModel {
  const factory ConnectorTypeModel({
    required int id,
    required String title,
  }) = _ConnectorTypeModel;

  factory ConnectorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorTypeModelFromJson(json);

}
