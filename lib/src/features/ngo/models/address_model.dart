import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressModel {
  final String lane1;
  final String lane2;
  final LatLng latLng;
  final String? city;
  final String? state;
  final String pinCode;

  const AddressModel({
    required this.lane1,
    required this.lane2,
    required this.latLng,
    this.city,
    this.state,
    required this.pinCode,
  });

  String get address => "$lane1, $lane2, $pinCode";

  String get fullAddress => "$lane1, $lane2, $city, $state, $pinCode";
}
