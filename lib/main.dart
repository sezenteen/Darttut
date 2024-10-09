import 'package:flutter/material.dart';
import '24.dart';
import '25.dart';
import '26.dart';
import '27.dart';
import '28.dart';
import '29.dart';
import '30.dart';
import '31.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage31(),
    );
  }
}