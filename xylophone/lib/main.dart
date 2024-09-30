import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Xylophone(),
        ),
      ),
    );
  });
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        XyloButton(9, 1),
        XyloButton(8, 2),
        XyloButton(7, 3),
        XyloButton(6, 4),
        XyloButton(5, 5),
        XyloButton(4, 6),
        XyloButton(3, 7),
      ],
    );
  }
}

class XyloButton extends StatelessWidget {
  final int colorIndex;
  final int soundNumber;

  const XyloButton(this.colorIndex, this.soundNumber, {super.key});

  void soundPlay(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber[colorIndex * 100],
          shape: const BeveledRectangleBorder(),
        ),
        onPressed: () {
          soundPlay(soundNumber);
        },
        child: null,
      ),
    );
  }
}
