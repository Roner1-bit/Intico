import 'package:flutter/material.dart';
import 'package:intico_glob/shared/components/components.dart';
import 'modules/login_screen/login_screen.dart';
import 'modules/welcoming_screen/welcoming_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intico',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: primarySwatch
      ),
      home: WelcomeScreen(),
    );
  }
}





