import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:watt_hub/config/locator/service_locator.config.dart';

import '../network/dio_client.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
void setupLocator() {
  getIt.registerLazySingleton<DioClient>(() => DioClient.instance);
}
