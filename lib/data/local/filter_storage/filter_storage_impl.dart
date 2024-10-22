import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/local/filter_storage/filter_storage.dart';
import 'package:watt_hub/domain/models/filter/filter_model.dart';

@Injectable(as: FilterStorage)
class FilterStorageImpl implements FilterStorage {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> deleteFilterData() async {
    await _storage.delete(key: FilterStorage.key);
  }

  @override
  Future<FilterModel?> readFilterData() async {
    final filterDataString = await _storage.read(key: FilterStorage.key);
    if (filterDataString != null && filterDataString.isNotEmpty) {
      Map<String, dynamic> filterDataJson = jsonDecode(filterDataString);
      return FilterModel.fromJson(filterDataJson);
    }
    return const FilterModel();
  }

  @override
  Future<void> saveFilterData(FilterModel filterData) async {
    Map<String, dynamic> filterJson = filterData.toJson();
    String filterDataJsonString = jsonEncode(filterJson);

    await _storage.write(key: FilterStorage.key, value: filterDataJsonString);
  }
}
