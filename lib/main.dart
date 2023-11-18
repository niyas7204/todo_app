import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/controllers/authentication/authentication_bloc.dart';

import 'package:todo_app/controllers/todo/todo_bloc.dart';
import 'package:todo_app/data/data_providers/auth_implimentation.dart';
import 'package:todo_app/data/data_providers/delete_todo_implimentation.dart';
import 'package:todo_app/data/data_providers/todo_implimentation.dart';
import 'package:todo_app/data/repsository/delete_todo_services.dart';
import 'package:todo_app/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:todo_app/view/validate_user_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TodoImplimentation().initializeHive();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              TodoBloc(TodoImplimentation(), DeleteTodoImplimentation()),
        ),
        BlocProvider(
          create: (context) => AuthenticationBloc(AuthImplimentation()),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const VerifyUser(),
      ),
    );
  }
}
