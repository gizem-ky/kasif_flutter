import 'package:flutter/material.dart';

class PlacesDetail extends StatelessWidget {
  final String name;
  final String distance;

  PlacesDetail({required this.name, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x6600004c),
        title: Text(name),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x6600004c),
                  Color(0x9900004c),
                  Color(0xcc00004c),
                  Color(0xff00004c),
                ]
            ),
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: $name', style: TextStyle(color: Colors.white),),
              Text('Distance: $distance',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  
}
