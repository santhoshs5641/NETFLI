import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.icon,
    required this.title
  });
final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon,
      color: kwhitecolors,
      size: 30,),
    Text(title,
    style: TextStyle(fontSize: 18,))],);
  }
}
