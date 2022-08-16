import 'package:flutter/material.dart';
import 'View/Screens/HomePage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CCB Lyrics',
      theme: ThemeData(
        primaryColorLight: Color.fromARGB(255, 51, 51, 51),
      ),
      home: const HomePage(),
    );
  }
}
