import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/controllers/authentication/authentication_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/view/authentication_page.dart';
import 'package:todo_app/view/validate_user_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthenticationBloc>(context)
        .add(const AuthenticationEvent.checkUser());
    return Scaffold(
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, authstate) {
          if (authstate.logeduser.status == StateStatus.success) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const VerifyUser(),
            ));
          }
          if (authstate.logeduser.status == StateStatus.error) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const UserAuth(),
            ));
          }
        },
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: LottieBuilder.asset(
                    "assets/animations/Animation - 1697727093744.json"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
