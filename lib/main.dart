import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          centerTitle: true,
          title: Text('Magic-8-Ball'),
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int magicNumber = 1;

// generate a new answer for the 8 ball
  void answerQuestion() {
    setState(() {
      magicNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          answerQuestion();
        },
        child: Image.asset('images/ball$magicNumber.png'),
      ),
    );
  }
}
