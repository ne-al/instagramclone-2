import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.black87,
        buttonTheme: const ButtonThemeData(buttonColor: Colors.black),
      ),
      home: const LoginPage(),
    );
  }
}
