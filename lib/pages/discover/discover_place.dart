import 'dart:async';
import 'dart:math' show asin, cos, pow, sqrt;

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/data/data.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kasif/core/model/place_model.dart';
import 'package:kasif/pages/detail/place_detail.dart';

class DiscoverPlace extends StatefulWidget {
  const DiscoverPlace({Key? key}) : super(key: key);

  @override
  _DiscoverPlaceState createState() => _DiscoverPlaceState();
}

class _DiscoverPlaceState extends State<DiscoverPlace> {
  Location _locationController = Location();
  final Completer<GoogleMapController> _mapController = Completer<GoogleMapController>();
  LatLng? _currentP;

  @override
  void initState() {
    super.initState();
    getLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        title: const Center(
          child: Text(
            'Gezilecek Yerler',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: _currentP == null
          ? const Center(
              child: CircularProgressIndicator(), // Kullanıcı konumunu alana kadar bir yükleme göstergesi göster
            )
          : ListView.builder(
              itemCount: place_items.length,
              itemBuilder: (context, index) {
                var place = place_items[index];
                double distance = calculateDistance(
                  _currentP!.latitude,
                  _currentP!.longitude,
                  place.latitude!,
                  place.longitude!,
                );
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    color: const Color.fromARGB(255, 63, 88, 76),
                    child: ListTile(
                      leading: Image.asset(place.image_url),
                      title: Text(
                        place.name,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tür: ${place.trip}', style: const TextStyle(color: Colors.white)),
                          Text('Yer: ${place.location}', style: const TextStyle(color: Colors.white)),
                          Text('Yaklaşık Uzaklık: ${distance.toStringAsFixed(2)} km',
                              style: const TextStyle(color: Colors.white)),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlaceDetailScreen(place: place),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    final CameraPosition _newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(_newCameraPosition),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged.listen((LocationData currentLocation) {
      if (currentLocation.latitude != null && currentLocation.longitude != null) {
        setState(() {
          _currentP = LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentP!);
        });
      }
    });
  }

  double calculateDistance(lat1, lon1, lat2, lon2) {
    const p = 0.017453292519943295;
    final c = cos;
    final a = 0.5 - c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a)); // 2 * R; R = 6371 km
  }
}
