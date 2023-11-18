part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required StateResponse signUP,
    required StateResponse logeduser,
    required StateResponse validate,
  }) = _AuthenticationState;
  factory AuthenticationState.initial() => AuthenticationState(
      validate: StateResponse.initial(),
      signUP: StateResponse.initial(),
      logeduser: StateResponse.initial());
}
