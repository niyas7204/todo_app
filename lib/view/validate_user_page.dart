import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/authentication/authentication_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/view/home.dart';
import 'package:todo_app/view/utils/alert_widgets.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class VerifyUser extends StatelessWidget {
  const VerifyUser({super.key});

  @override
  Widget build(BuildContext context) {
    final AlertDiologeWidgets alertController = Get.put(AlertDiologeWidgets());
    final TextEditingController pinController = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.validate.status == StateStatus.success) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
          } else if (state.validate.status == StateStatus.error) {
            alertController.warningAlert(state.validate.errorMessage!);
          }
        },
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 30),
                        controller: pinController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Your pin"),
                        onChanged: (value) {
                          formkey.currentState!.validate();
                        },
                        validator: (value) {
                          RegExp regex = RegExp(r'[;,\-.]');
                          if (value!.isEmpty) {
                            return "Enter your six digit pin";
                          } else if (value.length > 6) {
                            return "Pin Should only contain 6 digit";
                          } else if (regex.hasMatch(value)) {
                            return "Pin should not contain any special charecter";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SpaceSized.space10H,
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            BlocProvider.of<AuthenticationBloc>(context).add(
                                AuthenticationEvent.validateUser(
                                    pin: pinController.text));
                          }
                        },
                        child: StyledText.text20Head(text: "SUBMIT")),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
