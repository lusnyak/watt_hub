import 'package:json_annotation/json_annotation.dart';

part 'edit_user_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EditUserModel {
  final String? fullName;
  final String? phoneNumber;

  EditUserModel({
    this.fullName,
    this.phoneNumber,
  });

  factory EditUserModel.fromJson(Map<String, dynamic> json) =>
      _$EditUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditUserModelToJson(this);
}
