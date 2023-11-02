import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';


 const  imageurl='https://www.themoviedb.org/t/p/w250_and_h141_face/rBF8wVQN8hTWHspVZBlI3h7HZJ.jpg';
class searchIdleWdgets extends StatelessWidget {
  const searchIdleWdgets({super.key});

 

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
             SearchTextTitle(title: 'Top Searches'),
              kheight,
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx,index)=>const TopSearchItemTile(),
                   separatorBuilder: (ctx,index)=>kheight20,
                    itemCount: 10),
              ),

      
    ],);
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Screenwidh = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: Screenwidh*0.35,
          height: 65,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageurl),
                ),
            ),
            ),
           const Expanded(child: Text("Movie name",
            style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16),
            ),
            ),
           const CircleAvatar(
              backgroundColor:  kwhitecolors,
              radius: 25,
              child: CircleAvatar(backgroundColor:kBlackColors,
              radius: 23,
              child:Center(child:  Icon(CupertinoIcons.play_fill,color: kwhitecolors,),),),
            )

        
      ],
    );
  }
}