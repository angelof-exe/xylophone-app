import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            customXylophoneButton(Colors.red, 1),
            customXylophoneButton(Colors.orange, 2),
            customXylophoneButton(Colors.yellow, 3),
            customXylophoneButton(Colors.lightGreen, 4),
            customXylophoneButton(Colors.green, 5),
            customXylophoneButton(Colors.blue, 6),
            customXylophoneButton(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}

Expanded customXylophoneButton(Color colorOfButton, int soundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Container(decoration: BoxDecoration(color: colorOfButton)),
    ),
  );
}

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}
