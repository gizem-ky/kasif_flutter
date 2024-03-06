import 'package:flutter/material.dart';
import 'places_detail.dart';
import 'dart:math';
import 'package:location/location.dart';

class ImportantPlace {
  String name;
  String image;
  LatLng latLng;

  ImportantPlace({required this.name, required this.image, required this.latLng});
}

class LatLng {
  final double latitude;
  final double longitude;

  LatLng({required this.latitude, required this.longitude});
}

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  LatLng _currentLocation = LatLng(latitude: 0, longitude: 0); // Başlangıçta geçersiz bir konum
  bool _locationLoaded = false; // Konum yüklendi mi?

  // Places listesi
  List<ImportantPlace> places = [
    ImportantPlace(name: 'Hıdırlık Tepesi', latLng: LatLng(latitude: 41.244115862771196, longitude: 32.69666893013186), image: 'assets/images/building.png'),
    ImportantPlace(name: 'Safranbolu Eski Çarşı', latLng: LatLng(latitude: 41.244191515680235, longitude: 32.694646417074516), image: 'assets/images/building.png'),
    ImportantPlace(name: 'Bulak Mencilis Mağarası', latLng: LatLng(latitude: 41.27496193683539, longitude: 32.62533014594885), image: 'assets/images/building.png'),
    //
    //
    //
    //
  ];

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x6600004c),
          title: Center(child: Text('Yakındakiler')),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0), 
          child: _locationLoaded ? _buildPlacesList() : Center(child: CircularProgressIndicator()), // Konum yüklendi mi kontrolü
        ),
      ),
    );
  }

  Widget _buildPlacesList() {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (BuildContext context, int index) {
        double distance = calculateDistance(_currentLocation, places[index].latLng);
        return Card(
          elevation: 5, // Kart yükseltisi
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Kart border radius
          ),
          child: ListTile(
            onTap: () {
              // Kart tıklandığında PlacesDetail sayfasını aç
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlacesDetail(
                    name: places[index].name,
                    distance: distance.toStringAsFixed(2), // Mesafeyi string olarak gönder
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(places[index].image),
            ),
            title: Text(places[index].name),
            subtitle: Text('Yaklaşık Uzaklık: ${distance.toStringAsFixed(2)} km'),
          ),
        );
      },
    );
  }

  double degreesToRadians(double degrees) {
    return degrees * pi / 180;
  }

  double calculateDistance(LatLng latLng1, LatLng latLng2) {
    const double earthRadius = 6371.0; // Dünya yarıçapı km cinsinden

    double lat1 = degreesToRadians(latLng1.latitude);
    double lon1 = degreesToRadians(latLng1.longitude);
    double lat2 = degreesToRadians(latLng2.latitude);
    double lon2 = degreesToRadians(latLng2.longitude);

    double dlon = lon2 - lon1;
    double dlat = lat2 - lat1;

    double a = pow(sin(dlat / 2), 2) +
        cos(lat1) * cos(lat2) * pow(sin(dlon / 2), 2);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    double distance = earthRadius * c;

    return distance;
  }

  Future<void> _getLocation() async {
    Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    setState(() {
      _currentLocation = LatLng(latitude: _locationData.latitude!, longitude: _locationData.longitude!);
      _locationLoaded = true; // Konum yüklendiğinde kontrolü güncelle
    });
  }
}
