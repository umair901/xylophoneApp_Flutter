import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {



  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }


  Expanded buildKey({int soundNumber,Color color1,Color color2}){
    return Expanded(
      child: TextButton(
        onPressed: (){
        playSound(soundNumber);
      },
        child: Text(
          "Click me 1",
          style: TextStyle(color: color1),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color2,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

             buildKey(soundNumber: 1 ,color1:Colors.white,color2:Colors.blue),
              buildKey(soundNumber: 2 ,color1:Colors.white,color2:Colors.red),
              buildKey(soundNumber: 3 ,color1:Colors.white,color2:Colors.orange),
              buildKey(soundNumber: 4 ,color1:Colors.white,color2:Colors.brown),
              buildKey(soundNumber: 5 ,color1:Colors.white,color2:Colors.purple),
              buildKey(soundNumber: 6 ,color1:Colors.white,color2:Colors.pink),
              buildKey(soundNumber: 7 ,color1:Colors.black,color2:Colors.yellow),

            ],
          ),
        ),
      ),
    );
  }
}
