import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/model/activities_model.dart';
import 'package:kasif/pages/map_page.dart';
import 'package:url_launcher/url_launcher.dart'; // URL'yi açmak için gerekli paket

class ActivityDetailScreen extends StatefulWidget {
  final ActivityModel activity;

  const ActivityDetailScreen({super.key, required this.activity});

  @override
  // ignore: library_private_types_in_public_api
  _ActivityDetailScreenState createState() => _ActivityDetailScreenState();
}

class _ActivityDetailScreenState extends State<ActivityDetailScreen> {
  bool showAllDetail = false;

  @override
  Widget build(BuildContext context) {
    String detailText = widget.activity.detail;

    // Tarih, saat ve yer bilgilerini al
    String tarih = widget.activity.timing;
    String saat = widget.activity.saat;
    String yer = widget.activity.location;

    // Detail metnini al
    List<String> words = detailText.split(RegExp(r'\s+'));
    String firstPart = words.take(25).join(' ');
    words.skip(25).join(' ');

    double latitude = widget.activity.latitude ?? 0.0;
    double longitude = widget.activity.longitude ?? 0.0;

    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.activity.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Tarih, saat ve yer bilgilerini ekle
                    Text(
                      'Tarih: $tarih',
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Saat: $saat',
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Yer: $yer',
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
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
                        child: const Center(
                          child: Text(
                            'Devamını Oku',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
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
                    GestureDetector(
                      onTap: () {
                        _launchURL(widget.activity.url);
                      },
                      child: const Center(
                        child: Text(
                          'Bilet almak için tıklayınız',
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
                            markerId: MarkerId(widget.activity.name),
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
                                locationModel: widget.activity,
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

  // URL'yi açan yardımcı fonksiyon
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

