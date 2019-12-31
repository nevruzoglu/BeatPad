import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(playMusic());

class playMusic extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  ButtonTheme buildKey({Color color, int soundNumber, String text}) {
    return ButtonTheme(
      minWidth: 98,
      height: 98,
      child: FlatButton(
        textColor: Colors.white,
        child: Text('$text'),
        splashColor: Colors.greenAccent,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('BEATBOX'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade800,
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildKey(color: Colors.blue, soundNumber: 1, text: 'Bass'),
                  buildKey(color: Colors.red, soundNumber: 2, text: 'Chords'),
                  buildKey(
                      color: Colors.yellow.shade700,
                      soundNumber: 3,
                      text: 'Beat'),
                  buildKey(
                      color: Colors.deepPurple,
                      soundNumber: 4,
                      text: 'Ambient'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildKey(color: Colors.blue, soundNumber: 5, text: 'Bass'),
                  buildKey(color: Colors.red, soundNumber: 6, text: 'Chords'),
                  buildKey(
                      color: Colors.yellow.shade700,
                      soundNumber: 7,
                      text: 'Beat'),
                  buildKey(
                      color: Colors.deepPurple,
                      soundNumber: 8,
                      text: 'Ambient'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildKey(color: Colors.blue, soundNumber: 9, text: 'Bass'),
                  buildKey(color: Colors.red, soundNumber: 10, text: 'Chords'),
                  buildKey(
                      color: Colors.yellow.shade700,
                      soundNumber: 11,
                      text: 'Beat'),
                  buildKey(
                      color: Colors.deepPurple,
                      soundNumber: 12,
                      text: 'Ambient'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
