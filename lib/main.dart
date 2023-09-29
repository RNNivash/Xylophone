import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
      XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNo){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNo.wav'));
}

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Card(
                  color: Colors.red,
                  child: TextButton(
                         onPressed: () async {
                           playSound(1);
                           },
                          child:  Text('Master',
                          style: TextStyle(color: Colors.black,
                          fontSize: 50),
                        ),
                   ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.purpleAccent,
                  child: TextButton(
                    onPressed: () async {
                      playSound(2);
                    },
                    child:  Text('Beast',
                      style: TextStyle(color: Colors.black,
                      fontSize: 50),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                      onPressed: () async {
                        playSound(3);
                  },
                      child: Text('Rolex',
                       style: TextStyle(
                         color: Colors.black,
                       fontSize: 50),
                       ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.pinkAccent,
                  child: TextButton(
                    onPressed: () async {
                     playSound(4);
                    },
                    child: Text('Mark Antony',
                      style: TextStyle(
                          color: Colors.black,
                      fontSize: 50),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () async {
                      playSound(5);
                    },
                    child: Text('Naa Ready',
                      style: TextStyle(
                          color: Colors.black,
                      fontSize: 50),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.yellowAccent,
                  child: TextButton(
                    onPressed: () async {
                      playSound(6);
                    },
                    child: Text('Leo',
                      style: TextStyle(
                          color: Colors.black,
                      fontSize: 50),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.deepOrangeAccent,
                  child: TextButton(
                    onPressed: () async {
                      playSound(7);
                    },
                    child: Text('Harold Das',
                      style: TextStyle(
                          color: Colors.black,
                      fontSize: 50),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
       ),
      );
  }
}




