import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class Numbertitlecard extends StatelessWidget {
  const Numbertitlecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
           MainTitle(title: 'Top 10 Tv Shows India Today'),
         kheight,
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal ,
              children: List.generate(10,
             (index) => numbercard(index: index,),
             ),
             ),
          )
        
        
        ],
        );
  }
}

