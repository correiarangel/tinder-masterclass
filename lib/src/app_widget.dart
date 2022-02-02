import 'package:flutter/material.dart';
import 'package:tinder_masterclass/src/Login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tider Master Class',
      theme: ThemeData(
        primarySwatch:Colors.pink,
      ),
      home: const LoginPage(),
    );
  }
}