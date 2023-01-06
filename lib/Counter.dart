import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  // int value = 0;
  int increment = 1;

  Counter() : super();

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value = 0;
  int _value = 0;

  //int increment = 1;

  increaseValue() {
    setState(() {
      value = value + widget.increment;
    });
  }

  _increaseValue() {
    setState(() => _value++);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseValue,
      child: Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Text(
          "Value: $_value",
          style: TextStyle(fontSize: 22),
        ),
      )
    );
  }
}
