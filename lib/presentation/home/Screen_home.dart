import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_Card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier <bool> scrollNotifier = ValueNotifier(true);
class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context,index,_){
        return NotificationListener<UserScrollNotification>
      (
        onNotification: (notifcation){
          final ScrollDirection direction = notifcation.direction;
          print(direction);
          if (direction == ScrollDirection.reverse){
            scrollNotifier.value = false;

          }
          else if(direction == ScrollDirection.forward) {
            scrollNotifier.value = true;
          }
          return true;
        },
        child: Stack(
          children: [
            ListView (
              
                children: const [ 
                  BackgroundCard(),
                  
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
                ),
                scrollNotifier.value == true? AnimatedContainer(
                  duration: const Duration(microseconds: 1000),
                  width: double.infinity,
                  height: 90,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(

                    children: [
                      Row(
                        children: [
                          Image.network("https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456",
                          width: 60,
                          height: 60,),
                          const Spacer(),
                          const Icon(Icons.cast,
                          color: Colors.white,
                          size: 30,
                          ),
                          kwidth,
                           Container(width: 30,
                           height: 30,   
                           color:Colors.blue),
                           kwidth,

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Tv Shows',style:khometitletext) ,
                          Text('Movies',style: khometitletext,),
                          Text('Categories',style: khometitletext,),
                        ],
                      )
                    ],
                  ),
                ):kheight
          ],
        ),
      );
      },)
      
      );
  }

 
}


