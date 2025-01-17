import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 5.0,
          shadowColor: Colors.black,
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;

  void RollDice() {
    setState(
      () {
        leftdice = Random().nextInt(6) + 1;
        rightdice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  RollDice();
                },
                child: Image.asset(
                  "images/dice$leftdice.png",
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  RollDice();
                },
                child: Image.asset(
                  "images/dice$rightdice.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
