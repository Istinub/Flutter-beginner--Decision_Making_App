import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900.withOpacity(0.7),
          title: const Text(
            'Ask me Anything',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w100,
              fontSize: 25,
              color: Colors.yellow,
            ),
          ),
          centerTitle: true,
        ),
        body: const EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;
  String myText = "Tap on the Ball to know what to do!!!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 0.0),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  myText =
                      'That is my reply to you. Tap on the Ball again to Know different Answer';
                  if (kDebugMode) {
                    print('Got Tapped!');
                  }
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              myText,
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 25,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
