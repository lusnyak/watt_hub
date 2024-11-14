import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';

Future<String?> getAddress(double latitude, double longitude) async {
  try {
    List<Placemark> placemarks =
    await placemarkFromCoordinates(latitude, longitude);
    Placemark placemark = placemarks[0];
    return "${placemark.street}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}";
  } catch (e) {
    debugPrint("Error getting address: $e");
    return null;
  }
}