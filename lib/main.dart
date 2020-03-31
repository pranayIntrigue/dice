import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  int leftDice = 1;
  int rightDice = 1;

  void changingFaces() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                //UPDATE STATE
                setState(() {
                  changingFaces();
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                //UPDATE STATE
                setState(() {
                  changingFaces();
                });
              },
              child: Image.asset(
                'images/dice$rightDice.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}
