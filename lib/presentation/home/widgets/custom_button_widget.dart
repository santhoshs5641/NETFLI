import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.icon,
    required this.title,
    this.iconsize=30,this.textsize =18,
    
  });
final IconData icon;
final String title;
final double iconsize;
final double textsize;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon,
      color: kwhitecolors,
      size: iconsize,),
    Text(title,
    style: TextStyle(fontSize: textsize,))],);
  }
}
