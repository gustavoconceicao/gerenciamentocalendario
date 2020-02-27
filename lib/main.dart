import 'package:flutter/material.dart';
import 'package:primeiro_app/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Primeiro APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: homepage()
    );
  }
}
