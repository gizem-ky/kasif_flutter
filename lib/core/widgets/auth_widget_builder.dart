import 'package:flutter/material.dart';
import 'package:kasif/core/model/app_user.dart';
import 'package:kasif/core/service/i_auth_service.dart';
import 'package:provider/provider.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key? key, required this.onPageBuilder})
    :super(key: key);
  final Widget Function(
    BuildContext context, AsyncSnapshot<AppUser?> snapshot) onPageBuilder;

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    return StreamBuilder<AppUser?>(
      stream: _authService.onAuthStateChanded,
      builder: (context, AsyncSnapshot<AppUser?> snapShot){
        final _userData = snapShot.data;
        if (_userData != null) {
          return MultiProvider(
            providers: [
              Provider.value(value: _userData),
            ],
            child: onPageBuilder(context, snapShot),
          );
        }
        return onPageBuilder(context, snapShot);
      },
    );
  }
}