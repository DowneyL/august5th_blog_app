import 'package:flutter/material.dart';
import 'package:august5th_blog/component/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY FEED",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: AugustColors.black,
            letterSpacing: 1.2,
          ),
        ),
        elevation: .0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: AugustColors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: .0, horizontal: 20.0),
            child: Icon(
              Icons.search,
              color: AugustColors.black,
            ),
          ),
        ],
      ),
      body: Center(),
    );
  }
}
