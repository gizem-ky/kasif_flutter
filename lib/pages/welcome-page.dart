import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      onPressed: () => print("Sign-up Pressed"),
      child: Text("SIGN-UP"),
    ),
    );
}

Widget buildLoginBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () => print("Login Pressed"),
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
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x6600004c),
                    Color(0x9900004c),
                    Color(0xcc00004c),
                    Color(0xff00004c),
                  ]
                )
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
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 450),
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle sign-up button press
                            },
                            child: Text('Sign-up'),
                          ),
                          SizedBox(width: 35), // Add some spacing between the buttons
                          ElevatedButton(
                            onPressed: () {
                              // Handle login button press
                              //Navigator.pushNamed(context, '.\lib\pages\login-page.dart');
                            },
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ],
                  )
                  //SizedBox(height: 50),
                  //buildLoginBtn(),
                  //buildSignUpBtn(),
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