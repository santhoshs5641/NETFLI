import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';


const imageurl = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg";
class SearchResultWidgets extends StatelessWidget {
  const SearchResultWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(child: GridView.count(
         shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/2,
          children: List.generate(20,
           (index) {

            return const Maincard();
           }),
          
          ))
      ],
    );
  }
}class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(
          image: NetworkImage(imageurl),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7) 
        
      ),
    );
  }
}