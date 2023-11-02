import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';
class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
       MainTitle(title: title),
     kheight,
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal ,
          children: List.generate(10,
         (index) => const MainCard(),
         ),
         ),
      )
    
    
    ],
    );
  }
}

