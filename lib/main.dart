//A simple musical playing 7 notes. Introduces to using of different packages.

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final player = AudioCache();

  void soundPlayer(int fileNumber) {
    player.play('note$fileNumber.wav');
  }

  Expanded keyButton(int soundKey, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundPlayer(soundKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyButton(1, Colors.indigo),
              keyButton(2, Colors.blue),
              keyButton(3, Colors.green),
              keyButton(4, Colors.yellow),
              keyButton(5, Colors.orange),
              keyButton(6, Colors.red),
              keyButton(7, Colors.red[700]),
            ],
          ),
        ),
      ),
    );
  }
}
