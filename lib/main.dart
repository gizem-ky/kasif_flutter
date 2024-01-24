import 'package:flutter/material.dart';
import 'package:kasif/pages/login-page.dart';
import 'package:kasif/pages/register-page.dart';
import 'package:kasif/pages/welcome-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
    );
  }
}

