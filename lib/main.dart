import 'package:flutter/material.dart';
import 'package:flutter_application_1/gambar_screen.dart';
import 'package:flutter_application_1/kalkulator_screen.dart';
import 'package:flutter_application_1/list_screen.dart';
import 'package:flutter_application_1/nilai_akhir.dart';
import 'package:flutter_application_1/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: listScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('beranda rumah'),
        backgroundColor: Color.fromARGB(255, 97, 122, 180),
      ),
      body: Text('hello word'),
    );
  }
}
