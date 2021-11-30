import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonKey({Color colors, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.black26,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonKey(colors: Colors.red, soundNumber: 1),
              buttonKey(colors: Colors.orange, soundNumber: 2),
              buttonKey(colors: Colors.yellow, soundNumber: 3),
              buttonKey(colors: Colors.green, soundNumber: 4),
              buttonKey(colors: Colors.teal, soundNumber: 5),
              buttonKey(colors: Colors.blue, soundNumber: 6),
              buttonKey(colors: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
