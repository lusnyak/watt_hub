import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

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
    bool permissionGranted = await requestPermission();
    if (!permissionGranted) return null;

    try {
      Position position = await Geolocator.getCurrentPosition();
      return LatLng(position.latitude, position.longitude);
    } catch (e) {
      return null;
    }
  }
}
