import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void Sound(int n){
  final Player = AudioCache();
  Player.play('note$n.wav');
}

  Expanded button({required Color color,required int n}){
    return Expanded(
        child:Container(
          color: color,
          child:TextButton(
              onPressed: () {
               Sound(n);
              },
              child:Center(child: Text("Click Here",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),))
          ),
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner:false,
      home: Scaffold(
      body: SafeArea(child:
      Column(
mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      button(color: Colors.red,n:1),
      button(color: Colors.deepOrange,n:2),
      button(color: Colors.yellow,n:3),
      button(color: Colors.green,n:4),
      button(color: Colors.lightBlueAccent,n:5),
      button(color: Colors.blue,n:6),
      button(color: Colors.purple,n:7),
    ],
  )),
),
    );
  }
}

