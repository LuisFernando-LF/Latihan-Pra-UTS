import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Informasi',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Home() //ambil kelas home
        );
  }
}
