import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  const MyStatelessWidget({required this.child, required this.color}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 40),
      child: child,
    );
  }
}
