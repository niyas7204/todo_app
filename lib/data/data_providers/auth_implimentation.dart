import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/data/repsository/auth_service.dart';

class AuthImplimentation implements AuthService {
  //user sign up with google account
  @override
  Future<StateResponse<UserCredential>> googleAuth() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      return StateResponse.success(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } on SocketException {
      return StateResponse.error("Network not found");
    } catch (e) {
      return StateResponse.error("Sign Up failed");
    }
  }

//check user loged or not
  @override
  Future<StateResponse> checkUserLogin() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        return StateResponse.success(currentUser);
      } else {
        return StateResponse.error('User not loged');
      }
    } catch (e) {
      return StateResponse.error('Error on checking login');
    }
  }

  //get user pin
  @override
  Future<StateResponse<String>> validateUser() async {
    final pref = await SharedPreferences.getInstance();
    String? pin = pref.getString('pin');
    if (pin != null || pin!.isNotEmpty) {
      return StateResponse.success(pin);
    } else {
      return StateResponse.error("no user found");
    }
  }
}
