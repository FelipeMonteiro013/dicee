import 'package:flutter/material.dart';
import 'dart:math';

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
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LeftDiceNumber = 1;
  var RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    Function changeDicee() {
      setState(() {
        LeftDiceNumber = Random().nextInt(6) + 1;
        RightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  changeDicee();
                },
                child: Image.asset("images/dice$LeftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  changeDicee();
                },
                child: Image.asset("images/dice$RightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
