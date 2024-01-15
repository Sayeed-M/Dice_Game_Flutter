import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicee',
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 5;
  var RightDiceNumber = 1;
  void diceFace() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 104, 154, 241),
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Color.fromARGB(255, 29, 149, 247),
      ),
      body: Container(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    diceFace();
                    print('left button tapped');
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$RightDiceNumber.png'),
                  onPressed: () {
                    diceFace();
                    print('right button tapped');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
