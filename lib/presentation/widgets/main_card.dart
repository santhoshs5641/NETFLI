import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/model/movie.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,required this.movie
  });
   final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:10),
      width: 130,
      height: 250,
      
      decoration:  BoxDecoration(
        borderRadius: kradius10,
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("$imagePath${movie.posterPath}",
        ),
        ),
      ),
    );
  }
}