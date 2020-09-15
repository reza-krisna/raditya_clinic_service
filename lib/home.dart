import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({this.uid});

  final String uid;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Center(
        child: Text(
          'Home',
        ),
      ),
    );
  }
}