import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  Person() : super();

  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  String _name = "Tom";
  final _controller = TextEditingController();

  _changeName() {
    setState(() => _name = _controller.text);
  }

  @override
  void initState() {
    super.initState();
    _controller.text = _name;
    _controller.addListener(_changeName);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "User name: $_name",
          style: TextStyle(fontSize: 22),
        ),
        TextField(
          style: TextStyle(fontSize: 22),
          controller: _controller,
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
