import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/model/place_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kasif/pages/map_page.dart';

class PlaceDetailScreen extends StatefulWidget {
  final PlaceModel place;

  const PlaceDetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  _PlaceDetailScreenState createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  bool showAllDetail = false;

  @override
  Widget build(BuildContext context) {
    String detailText = widget.place.detail;
    List<String> words = detailText.split(RegExp(r'\s+'));
    String firstPart = words.take(25).join(' ');
    words.skip(25).join(' ');

    double latitude = widget.place.latitude ?? 0.0;
    double longitude = widget.place.longitude ?? 0.0;

    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        title: Text(
          widget.place.name,
          style: const TextStyle(color: Colors.grey),
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                widget.place.image_url,
                fit: BoxFit.cover,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.place.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      showAllDetail ? detailText : firstPart,
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    if (!showAllDetail && words.length > 25)
                      TextButton(
                        onPressed: () {
                          setState(() {
                            showAllDetail = true;
                          });
                        },
                        child: const Center(child: Text(
                          'Devamını Oku',
                          style: TextStyle(color: Colors.grey),
                        )),
                      ),
                    if (showAllDetail && words.length > 25)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.keyboard_arrow_up),
                            onPressed: () {
                              setState(() {
                                showAllDetail = false;
                              });
                            },
                          ),
                        ],
                      ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Adres: ${widget.place.address}',
                            style: const TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: widget.place.address));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Adres kopyalandı'),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.green,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 300,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(latitude, longitude),
                          zoom: 15,
                        ),
                        markers: {
                          Marker(
                            markerId: MarkerId(widget.place.name),
                            position: LatLng(latitude, longitude),
                          ),
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapPage(
                                locationModel: widget.place,
                              ),
                            ),
                          );
                        },
                        child: Text('Haritada Göster'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
