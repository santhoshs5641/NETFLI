import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class numbercard extends StatelessWidget {
  const numbercard({super.key,required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
         Row(
        children: [
         const  
         SizedBox(width: 40,height: 200,),
          Container(
            width: 150, 
            height: 200,
            
            decoration:  BoxDecoration(
              borderRadius: kradius10,
              image:const  DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",
              ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        left: 13,
        bottom: -30,
        child: BorderedText(
          strokeWidth: 10,
          strokeColor: kwhitecolors,
          child: Text("${index + 1}",
          style: TextStyle(
            color: kBlackColors,
            decoration:TextDecoration.none,
            fontWeight: FontWeight.bold,
            decorationColor: Colors.black,
            fontSize: 140),),
        ),
      )
      ]
    );
  }
}