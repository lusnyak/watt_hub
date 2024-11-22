abstract class EndPoints {
  static const String authOtp = '/auth/otp';
  static const String checkOtp = '/auth/check-otp';
  static const String usersMe = '/users/me';

  static const String stations = '/stations';
  static const String addStation = '/stations/';
  static const String stationsId = '/stations/{id}';
  static const String stationsFilter = '/stations/filter';
  static const String stationMy = '/stations/my';
  static const String userStations = '/stations/user/{id}';

  static const String  carTypes = "/car-types";
  static const String  carModels ="/car-models";
  static const String  getCars ="/car/";
  static const String  getMyCar ="/car/my";
  static const String  getUserCars ="/car/user/{id}";
  static const String  addCar ="/car/";

  static const String  allOrder ="/order";
  static const String  orderId ="/order/{id}";
  static const String  createOrder ="/order/";
  static const String  orderMy ="/order/my";
  static const String  cancelledOrder ="/order/{id}/cancelled";
  static const String  declinedOrder  ="/order/{id}/declined";
  static const String  updateOrder ="/order/{id}";
  static const String  userOrder ="/order/user/{id}";

}
