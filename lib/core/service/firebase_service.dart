import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:kasif/core/model/app_user.dart';
import 'package:kasif/core/service/i_auth_service.dart';
import 'package:kasif/core/service/mixin_user.dart';


class AuthService with ConverUser implements IAuthService { 
  final FirebaseAuth _authInstance = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  

  AppUser _getUser(User? user) {
    return AppUser(userId: user!.uid, userMail: user.email!);
  }

  @override
  Future<AppUser> createUserWithEmailAndPassword(
    {required String email, required String password, required String confirmPassword}) async {
  var _tempUser = await _authInstance.createUserWithEmailAndPassword(
    email: email, password: password);
  return convertUser(_tempUser);
}


  @override
  // It shows if there is a online user.
  Stream<AppUser?> get onAuthStateChanded => _authInstance.authStateChanges().map(_getUser);

  @override
  Future<AppUser> signInEmailAndPassword(
    {required String email, required String password}) async {
    var _tempUser = await _authInstance.signInWithEmailAndPassword(
      email: _emailController.text, password: _passwordController.text);
    return convertUser(_tempUser);
  }

  @override
  Future<void> signOut() async {
    await _authInstance.signOut();
  }
}
