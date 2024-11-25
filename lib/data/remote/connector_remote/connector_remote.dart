import 'package:dio/dio.dart';
import 'package:watt_hub/config/config.dart';
import 'package:watt_hub/config/network/constants/constants.dart';
import 'package:watt_hub/config/network/constants/end_points.dart';
import 'package:watt_hub/domain/models/connector_type/connector_type_model.dart';

part 'connector_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class ConnectorRemoteApi {
  @factoryMethod
  factory ConnectorRemoteApi(Dio dio) = _ConnectorRemoteApi;

  @GET(EndPoints.connectorTypes)
  Future<List<ConnectorTypeModel>> connectorTypes();
}
