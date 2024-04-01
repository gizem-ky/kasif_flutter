import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasif/pages/login/login_page.dart';
import 'package:kasif/pages/login/register_page.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {

  Widget buildSignUpBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
          // Butona tıklandığında sign-up sayfasına yönlendirme
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        },
      child: Text("SIGN-UP"),
    ),
    );
  }

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
          // Butona tıklandığında sign-up sayfasına yönlendirme
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      child: Text("LOGIN"),
    ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,              
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/logo.jpg"),
                  
                ),
              ),
              
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 320),
                  Text(
                    'welcome..',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  SizedBox(height: 130),
                 
                  buildLoginBtn(),
                  SizedBox(height: 10),
                  buildSignUpBtn(),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
Platform  Firebase App Id
web       1:976973197594:web:cb2ca5b4d02746330dbca3
android   1:976973197594:android:c504e91c025f7dfd0dbca3
ios       1:976973197594:ios:72e8c1ffeb1777cc0dbca3
*/