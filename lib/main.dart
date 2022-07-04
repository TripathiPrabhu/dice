import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dice-App'),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dicenumber = 1;

  changeme() {
    setState(() {
      int rndm = Random().nextInt(5) + 1;
      dicenumber = rndm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeme();
                },
                child: Image(
                  image: AssetImage('images/dice$dicenumber.png'),
                )),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeme();
              },
              child: Image(
                image: AssetImage('images/dice$dicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
