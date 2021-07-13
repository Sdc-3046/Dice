import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: DicePage(),
      )));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int dicenumber1 = 1;
  int dicenumber2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dicenumber1 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/inverted-dice-$dicenumber1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dicenumber2 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/inverted-dice-$dicenumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  int dicenumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicenumber=Random().nextInt(6)+1;
              },
              child: Image.asset('images/inverted-dice-$dicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicenumber=Random().nextInt(6)+1;
              },
              child: Image.asset('images/inverted-dice-$dicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}*/
