import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

List<String> images = [
  "assets/images/banner1.png",
  "assets/images/banner2.jpg",
  "assets/images/banner3.jpg",
];

class AugustBanner extends StatefulWidget {
  @override
  _AugustBannerState createState() => _AugustBannerState();
}

class _AugustBannerState extends State<AugustBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18.0,
      ),
      width: MediaQuery.of(context).size.width,
      height: 240.0,
      child: Swiper.children(
        children: images.map((url) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.fill,
                )),
          );
        }).toList(),
        controller: new SwiperController(),
        index: 0,
        viewportFraction: .8,
        scale: .9,
        autoplay: true,
      ),
    );
  }
}
