import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/space_sized.dart';
import 'package:todo_app/controllers/authentication/authentication_bloc.dart';
import 'package:todo_app/core/enums/enums.dart';
import 'package:todo_app/view/home.dart';
import 'package:todo_app/view/utils/alert_widgets.dart';
import 'package:todo_app/view/utils/styled_texts.dart';

class UserAuth extends StatelessWidget {
  const UserAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final AlertDiologeWidgets alertController = Get.put(AlertDiologeWidgets());

    final TextEditingController pincontroller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 235, 235),
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.signUP.status == StateStatus.success) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
          } else if (state.signUP.status == StateStatus.error) {
            alertController.warningAlert(state.validate.errorMessage!);
          }
        },
        child: SafeArea(
            child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledText.text20HeadBlack(
                      text: 'Set a six digit pin to\n secure your app'),
                  SpaceSized.space10H,
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
                        controller: pincontroller,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter a pin"),
                        onChanged: (value) {
                          formkey.currentState!.validate();
                        },
                        validator: (value) {
                          RegExp regex = RegExp(r'[;,\-.]');
                          if (value!.isEmpty) {
                            return "Enter a six digit pin";
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
                  SpaceSized.space20H,
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        BlocProvider.of<AuthenticationBloc>(context).add(
                            AuthenticationEvent.signUp(
                                pin: pincontroller.text));
                      }
                    },
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      height: 70,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Untitled.jpeg"))),
                          ),
                          StyledText.text20Head(text: "Sign UP with google"),
                          SpaceSized.space5w
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
