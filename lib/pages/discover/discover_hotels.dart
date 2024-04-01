import 'package:flutter/material.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/data/data.dart';
import 'package:kasif/pages/detail/hotel_detail.dart';


class DiscoverHotel extends StatefulWidget {
  const DiscoverHotel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiscoverHoteltate createState() => _DiscoverHoteltate();
}

class _DiscoverHoteltate extends State<DiscoverHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        title: const Center(
          child: Text(
            'Oteller',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(

        itemCount: hotel_items.length,
        itemBuilder: (context, index) {
          var hotel = hotel_items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              color: const Color.fromARGB(255, 63, 88, 76),
              child: ListTile(
                leading: Image.asset(
                  hotel.image_url,
                ),
                title: Text(hotel.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fiyat: ${hotel.price}', style: const TextStyle(color: Colors.white),),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HotelDetailScreen(hotel: hotel),
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
}
