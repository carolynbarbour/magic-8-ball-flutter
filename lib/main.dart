import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      BallPage(),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          title: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue,
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({
    Key key,
  }) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int side = 1;

  int getRandomSide() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                side = getRandomSide();
              });
            },
            child: Image.asset('images/ball$side.png')),
      ),
    );
  }
}
