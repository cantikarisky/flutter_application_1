import 'package:flutter/material.dart';
import 'package:flutter_application_1/kalkulator_screen.dart';
import 'package:flutter_application_1/nilai_akhir.dart';


class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Screen'),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => KalkulatorScreen(),
                      
                    ),
                  );
                },
                child: Text('Kalkulator')),
            ElevatedButton(
              onPressed: () {},
              child: Text('Chara Anime'),
            ),
            ElevatedButton(
              onPressed: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => NilaiAkhir(),
                      
                    ),
                  );},
              child: Text('Nilai Akhir'),
            ),
          ],
        ));
  }
}
