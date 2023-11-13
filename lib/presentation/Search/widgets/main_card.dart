import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/model/movie.dart';


class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$imagePath${movie.posterPath}"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
