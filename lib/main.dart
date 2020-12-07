import 'package:flutter/material.dart';
import 'package:my_personal_app/screens/login_screen.dart';
import 'package:my_personal_app/screens/landing_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
