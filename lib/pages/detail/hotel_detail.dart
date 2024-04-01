import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/model/hotels_model.dart';
import 'package:kasif/pages/map_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetailScreen extends StatefulWidget {
  final HotelModel hotel;

  const HotelDetailScreen({super.key, required this.hotel});

  @override
  // ignore: library_private_types_in_public_api
  _HotelDetailScreenState createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  bool showAllDetail = false;

  @override
  Widget build(BuildContext context) {

    double latitude = widget.hotel.latitude ?? 0.0;
    double longitude = widget.hotel.longitude ?? 0.0;


    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        title: Text(
          widget.hotel.name,
          style: const TextStyle(color: Colors.grey),
        ),
        iconTheme: const IconThemeData(color: Colors.grey), // Geri tuşunun rengini gri yapar
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                widget.hotel.image_url,
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
                        widget.hotel.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Adres: ${widget.hotel.address}',
                            style: const TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: widget.hotel.address));
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
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        _launchURL(widget.hotel.url);
                      },
                      child: const Center(
                        child: Text(
                          'Rezervasyon için tıklayınız',
                          style: TextStyle(
                            color: Colors.grey, 
                            decoration: TextDecoration.underline, 
                            decorationColor: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
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
                            markerId: MarkerId(widget.hotel.name),
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
                                locationModel: widget.hotel,
                              ),
                            ),
                          );
                        },
                        child: Text('Haritada Göster'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _launchURL(String url) async {
    try {
      // ignore: deprecated_member_use
      if (await canLaunch(url)) {
        // ignore: deprecated_member_use
        await launch(url);
      } else {
        throw 'URL açılamıyor: $url';
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('URL açılamıyor: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  } 
}
