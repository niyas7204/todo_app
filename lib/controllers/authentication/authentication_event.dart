part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signUp({required String pin}) = _signUp;
  const factory AuthenticationEvent.checkUser() = _checkUser;
  const factory AuthenticationEvent.validateUser({required String pin}) =
      _validateUser;
}
