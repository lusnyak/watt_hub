import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus {
  @JsonValue('pending')
  Pending,

  @JsonValue('confirmed')
  Confirmed,

  @JsonValue('completed')
  Completed,

  @JsonValue('cancelled')
  Cancelled,
}
