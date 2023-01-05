import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void generateRandomNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          generateRandomNumber();
          debugPrint('The ball number is: $ballNumber');
        },
        child: Image.asset('images/ball$ballNumber.png',
            color: Colors.yellow.shade200, colorBlendMode: BlendMode.darken),
      ),
    );
  }
}
