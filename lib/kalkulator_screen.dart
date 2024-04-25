import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1Controller = TextEditingController();
  String tampilHasil = "hasil kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          TextField(controller: angka1Controller),
          ElevatedButton(
              onPressed: () {
                print(angka1Controller.text);
                setState(() {
                  tampilHasil = angka1Controller.text;
                });
              },
              child: Text('Tampil')),
          Text('$tampilHasil'),
        ],
      ),
    );
  }
}
