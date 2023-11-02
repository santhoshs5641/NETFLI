import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class Videolistitem extends StatelessWidget {
  final int index;
  const Videolistitem({super.key,
  required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //leftside
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                child: IconButton(onPressed: (){},
                 icon:const Icon(Icons.volume_off,
                 color: kwhitecolors,
                 size: 30,
                ),
                ),
                ),
                //rightside
                Column(
                   mainAxisAlignment:MainAxisAlignment.end,
                  children:const  [
                 
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage( "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",),
                    ),
                  ),
                  kheight,
                  videoactionswidgets(icon: Icons.emoji_emotions,
                   title: 'LoL'),
                   kheight,
                   videoactionswidgets(icon: Icons.add,
                   title: 'My List'),
                   kheight,
                   videoactionswidgets(icon: Icons.share,
                   title: 'Share'),
                   kheight,
                   videoactionswidgets(icon: Icons.play_arrow,
                   title: 'play')
                  
                ],)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class videoactionswidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  const videoactionswidgets({super.key,
  required this.icon,
  required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,size: 30,),
          Text(title, style: const TextStyle(color: kwhitecolors,fontSize: 16),),
        ],
      ),
    );
  }
}