import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: xylophone(),
      ),
    ),
  );
}

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void soundPlay(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[900])),
              onPressed: () {
                soundPlay(1);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[800])),
              onPressed: () {
                soundPlay(2);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[700])),
              onPressed: () {
                soundPlay(3);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[600])),
              onPressed: () {
                soundPlay(4);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[500])),
              onPressed: () {
                soundPlay(5);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[400])),
              onPressed: () {
                soundPlay(6);
              },
              child: null),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[300])),
              onPressed: () {
                soundPlay(7);
              },
              child: null),
        ],
      ),
    );
  }
}
