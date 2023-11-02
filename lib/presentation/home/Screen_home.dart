import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ListView (
        
          children:  [ 
            Stack(
              children: [
                Container(
                  width:double.infinity ,
                  height:600,
                  decoration:const BoxDecoration(
                    image: DecorationImage(image: NetworkImage(Kmainimage),),
                
                  ),
                
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                      children: [
                        Custombutton(title: "My List",
                        icon: Icons.add,),
                         
                        playbutton(),
                        Custombutton(title: "info",
                        icon: Icons.info,),],
                    ),
                  ),
                )
              ],
            ),
           MainTitleCard(
            title: "Released in the past year",),
            kheight,
           MainTitleCard(
            title: "Trending Now",),
            kheight,
            Numbertitlecard(),
            kheight,
           MainTitleCard(title: "Tense dramas",),
           kheight,
           MainTitleCard(title: "South Indian Cinema",),
          ],
          )
      
      );
  }

  TextButton playbutton() {
    return TextButton.icon(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhitecolors)),
                     icon:const  Icon(Icons.play_arrow,size: 25,color: kBlackColors,
                     ), 
                    label: const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: Text("play",style: TextStyle(fontSize: 20,color: kBlackColors),),
                    ));
  }
}


