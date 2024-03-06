import 'package:flutter/material.dart';
import 'package:kasif/pages/city_detail.dart';
import 'package:kasif/pages/suggestions.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Daha fazla')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CityDetail()),
                  );
                },
                child: Text('Şehir Rehberi'),
              ),
              SizedBox(height: 20), // Butonlar arasında bir boşluk ekledik
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuggestionsPage()),
                  );
                },
                child: Text('Öneride Bulun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
