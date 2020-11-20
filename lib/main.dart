import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  void changeDicesFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  Widget buildDice(int diceNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            changeDicesFace();
          });
        },
        child: Image.asset('images/dice$diceNumber.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          buildDice(leftDiceNumber),
          buildDice(rightDiceNumber),
        ],
      ),
    );
  }
}
