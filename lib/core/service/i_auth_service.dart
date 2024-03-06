import 'package:kasif/core/model/app_user.dart';

abstract class IAuthService{
  Future <AppUser> createUserWithEmailAndPassword(
    {required String email, required String password, required String confirmPassword});
  Future <AppUser> signInEmailAndPassword(
    {required String email, required String password});
  Future <void> signOut();
  Stream<AppUser?> get onAuthStateChanded;

}