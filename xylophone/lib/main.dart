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

  Expanded xyloButton(int colorIndex, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber[colorIndex * 100],
          shape: BeveledRectangleBorder(),
        ),
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        xyloButton(9, 1),
        xyloButton(8, 2),
        xyloButton(7, 3),
        xyloButton(6, 4),
        xyloButton(5, 5),
        xyloButton(4, 6),
        xyloButton(3, 7),
      ],
    );
  }
}
