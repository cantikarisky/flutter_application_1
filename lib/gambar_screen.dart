import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantinama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? "gambar kosong"),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () async {
              print("nagaa");
              gantinama("naga");
              await player.setAsset("aset_media/suara/suaranaga.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/nagaa.jpeg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("naga1");
              gantinama("naga1");
            },
            child: Card(
              child: Image.asset("aset_media/gambar/naga1.jpeg"),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("naga2");
              gantinama("naga2");
            },
            child: Card(
              child: Image.asset("aset_media/gambar/naga2.jpeg"),
            ),
          ),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
