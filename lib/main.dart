import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kasif/core/model/app_user.dart';
import 'package:kasif/core/service/firebase_service.dart';
import 'package:kasif/core/service/i_auth_service.dart';
import 'package:kasif/core/widgets/auth_widget.dart';
import 'package:kasif/core/widgets/auth_widget_builder.dart';
import 'package:kasif/firebase_options.dart';
import 'package:kasif/pages/home_page.dart';
import 'package:kasif/pages/map_page.dart';
import 'package:kasif/pages/more_page.dart';
import 'package:kasif/pages/places.dart';
import 'package:kasif/pages/welcome_page.dart';
import 'package:provider/provider.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider <IAuthService>(
          create: (_) => AuthService(),
        )
      ],
      child: AuthWidgetBuilder(
        onPageBuilder: (context, AsyncSnapshot<AppUser?> snapShot) =>MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          //home: AuthWidget(snapShot: snapShot,),
          //home: MapPage(),
          //home: Places(),
          home: HomePage(),
          //home: MorePage(),
        ),
      ),
    );
  }
}

