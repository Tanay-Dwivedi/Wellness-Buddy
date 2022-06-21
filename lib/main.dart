import 'package:flutter/material.dart';
import 'package:wellness_buddy/landing_screens/on_boarding_screen.dart';
import 'package:wellness_buddy/user_authenticating_screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
