import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:10),
      width: 130,
      height: 250,
      
      decoration:  BoxDecoration(
        borderRadius: kradius10,
        image:const  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",
        ),
        ),
      ),
    );
  }
}