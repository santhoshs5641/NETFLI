import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';


class DownloadImageWidgets extends StatelessWidget {
  const DownloadImageWidgets({
    super.key,
    required this.imageList,
    this.angle=0,
    required this.margin,
    required this.size,
    this.radius=10
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle*pi/180,
        //child: ClipRRect(
        //  borderRadius: BorderRadius.circular(radius),
          child: Container(
          // margin: margin,
            width: size.width *2,
            height: size.width *2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  fit: BoxFit.contain,
                    image: NetworkImage("$imagePath$imageList"))),
          ),
        ),
      
    );
  }
}
 