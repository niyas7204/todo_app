import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';

abstract class AuthService {
  Future<StateResponse<UserCredential>> googleAuth();
  Future<StateResponse> checkUserLogin();
  Future<StateResponse<String>> validateUser();
}
