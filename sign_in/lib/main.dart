import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sign_in/login_app/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LogIn(),
    );
  }
}
