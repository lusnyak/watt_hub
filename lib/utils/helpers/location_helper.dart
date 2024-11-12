import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

typedef Coordinate = LatLng;

class LocationManager {
  Future<bool> requestPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  /// TODO: Jora -  LatLng verbepoxel sepakani
  ///  throw sepakan exeptiond  - not required
  Future<LatLng?> getCurrentLocation() async {
    try {
      bool permissionGranted = await requestPermission();
      if (!permissionGranted) return null;
      Position position = await Geolocator.getCurrentPosition();
      return Coordinate(position.latitude, position.longitude);
    } catch (e) {
      throw Exception('Failed to get current location: $e');
    }
  }
}
