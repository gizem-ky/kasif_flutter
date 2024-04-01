import 'package:flutter/material.dart';
import 'package:kasif/core/common/common_color.dart';
import 'package:kasif/core/data/data.dart';
import 'package:kasif/pages/detail/activity_detail.dart';
class DiscoverActivity extends StatefulWidget {
  const DiscoverActivity({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiscoverActivityState createState() => _DiscoverActivityState();
}

class _DiscoverActivityState extends State<DiscoverActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: AppBar(
        backgroundColor: secondrycolor,
        title: const Center(
          child: Text(
            'Etkinlikler',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(

        itemCount: activity_items.length,
        itemBuilder: (context, index) {
          var activity = activity_items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              color: const Color.fromARGB(255, 63, 88, 76),
              child: ListTile(
                leading: Image.asset(
                  activity.image_url,
                ),
                title: Text(activity.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tür: ${activity.trip}', style: const TextStyle(color: Colors.white),),
                    Text('Yer: ${activity.location}', style: const TextStyle(color: Colors.white),),
                    Text('Fiyat: ${activity.price}', style: const TextStyle(color: Colors.white),),
                    Text('Tarih: ${activity.timing}', style: const TextStyle(color: Colors.white),),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ActivityDetailScreen(activity: activity),
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
