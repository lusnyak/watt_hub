import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/data/remote/connector_remote/connector_remote.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

@lazySingleton
class ConnectorRepository {
  Future<List<ConnectorTypeModel>> connectors() async {
    return await getIt<ConnectorRemoteApi>()
        .connectorTypes()
        .catchError((_) => <ConnectorTypeModel>[]);
  }
}
