import 'package:flutter/material.dart';
import 'package:new_e_commerce_app/utilities/router.dart';
import 'package:new_e_commerce_app/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff9f9f9),
        primaryColor: const Color.fromARGB(255, 232, 47, 33),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(),
          labelStyle: Theme.of(context).textTheme.titleMedium,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.loginPage,
    );
  }
}
