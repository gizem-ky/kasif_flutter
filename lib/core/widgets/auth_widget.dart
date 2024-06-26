import 'package:flutter/material.dart';
import 'package:kasif/core/model/app_user.dart';
import 'package:kasif/core/widgets/error_page.dart';
import 'package:kasif/pages/home/home_screen.dart';
import 'package:kasif/pages/login/welcome_page.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key, required this.snapShot}) : super(key: key);
  final AsyncSnapshot<AppUser?> snapShot;

  @override
  Widget build(BuildContext context) {
    if(snapShot.connectionState==ConnectionState.active) {
      return snapShot.hasData ?const HomeScreen() : const welcomePage();
    }
    return const ErrorPage();
  }
}

