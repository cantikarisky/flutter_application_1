import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
        backgroundColor: Color.fromARGB(255, 210, 118, 111),
      ),
      body: Column(
        children: [
          Text('Andi'),
          Text('Budi'),
          Text('Cici'),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dedi'),
            ),
          )
        ],
      ),
    );
  }
}
