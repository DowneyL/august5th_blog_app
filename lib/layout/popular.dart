import 'package:flutter/material.dart';
import 'package:august5th_blog/layout/banner.dart';

class PopularPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AugustBanner(),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
          Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );

//      ConstrainedBox(
//      constraints: BoxConstraints(
//        minHeight: 0,
//        maxHeight: 100.0,
//        minWidth: 0,
//        maxWidth: 100.0,
//      ),
//      child: Container(
//        width: 20.0,
//        height: 20.0,
//        color: Colors.blue,
//      ),
//    );

//    Swiper(
//      itemCount: 3,
//      itemBuilder: (context, index) {
//        return Container(
//          decoration: BoxDecoration(
//            color: Colors.red,
//          ),
//          child: Image.asset("assets/images/mobu.jpeg"),
//        );
//      },
//      viewportFraction: .6,
//      scale: .8,
//    ),

//    return SingleChildScrollView(
//      padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
//      child: Column(
//        children: <Widget>[
//
//        ],
//      ),
//    );
  }
}
