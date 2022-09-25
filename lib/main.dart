import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int l1 = 1;
  int l2 = 2;
  int r1 = 3;
  int r2 = 4;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        l1 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$l1.png")),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        r1 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$r1.png")),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      stateDice();
                    },
                    child: Image.asset("images/dice$l2.png")),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      stateDice2();
                    },
                    child: Image.asset("images/dice$r2.png")),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void stateDice() {
    setState(() {
      r2 = Random().nextInt(6) + 1;
      l2 = Random().nextInt(6) + 1;
    });
  }

  void stateDice2() {
    setState(() {
      r2 = Random().nextInt(6) + 1;
      l2 = Random().nextInt(6) + 1;
      r1 = Random().nextInt(6) + 1;
      l1 = Random().nextInt(6) + 1;
    });
  }
}
