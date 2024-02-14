import 'package:firebase_auth/firebase_auth.dart';
import 'package:kasif/core/model/app_user.dart';

mixin ConverUser {
  AppUser convertUser(UserCredential user) {
  return AppUser(userId: user.user!.uid, userMail: user.user!.email!);
}
}