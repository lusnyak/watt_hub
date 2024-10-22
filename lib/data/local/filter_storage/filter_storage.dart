import 'package:watt_hub/domain/models/filter/filter_model.dart';

abstract class FilterStorage {
  static const String key = 'filterData';

  Future<void> deleteFilterData();
  Future<void> saveFilterData(FilterModel filterData);
  Future<FilterModel?> readFilterData();
}
