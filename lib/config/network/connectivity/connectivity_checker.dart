import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:watt_hub/config/config.dart';

@injectable
class ConnectivityChecker {
  Future<bool> hasConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult.contains(ConnectivityResult.none);
  }
}
