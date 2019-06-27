import 'package:flutter/material.dart';

class AugustTab extends StatelessWidget {
  final String text;
  AugustTab({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
