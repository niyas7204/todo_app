import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/core/helpers/state_response_handler.dart';
import 'package:todo_app/core/shared_preference/store_pin.dart';
import 'package:todo_app/data/repsository/auth_service.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthService userAuth;
  AuthenticationBloc(this.userAuth) : super(AuthenticationState.initial()) {
    on<_signUp>((event, emit) async {
      emit(state.copyWith(signUP: StateResponse.loading()));
      final response = await userAuth.googleAuth();
      if (response.status == StateStatus.success) {
        await updateSharedPreference(event.pin);
        emit(state.copyWith(signUP: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(
            state.copyWith(signUP: StateResponse.error(response.errorMessage)));
      }
    });
    on<_checkUser>((event, emit) async {
      emit(state.copyWith(logeduser: StateResponse.loading()));
      final response = await userAuth.checkUserLogin();

      if (response.status == StateStatus.success) {
        emit(state.copyWith(logeduser: StateResponse.success(response.data)));
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(
            logeduser: StateResponse.error(response.errorMessage)));
      }
    });
    on<_validateUser>((event, emit) async {
      emit(state.copyWith(logeduser: StateResponse.loading()));
      final response = await userAuth.validateUser();

      if (response.status == StateStatus.success) {
        if (event.pin == response.data) {
          emit(state.copyWith(validate: StateResponse.success(response.data)));
        } else {
          emit(state.copyWith(
              logeduser: StateResponse.error("Enter a valid pin")));
        }
      } else if (response.status == StateStatus.error) {
        emit(state.copyWith(
            logeduser: StateResponse.error(response.errorMessage)));
      }
    });
  }
}
