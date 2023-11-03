
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/comingsoon.dart';
import 'package:netflix/presentation/new_and_hot/widget/everyoneswatchingwidgets.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widgets.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         appBar:  PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title:    const Text(
          "New & Hot",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.w900,
        color: kwhitecolors
        ),
        ),
        actions: [const Icon(Icons.cast,
        color: Colors.white,
        size: 30,),
        kwidth,
        Container(
         width: 30,
        height: 30,   
        color:Colors.blue),
        kwidth,
        ],
        
        bottom:  TabBar(
          labelColor: kBlackColors,
          unselectedLabelColor: kwhitecolors,
          isScrollable: true,
          labelStyle: const TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold),
          indicatorColor: Colors.transparent,
           indicator: BoxDecoration(
            borderRadius: kradius30,
          color: kwhitecolors,
          
        )
         ,tabs: const 
        [
          Tab(text: " 🍿 Coming Soon ",),
          Tab(text: " 👀 Everyone's Watching  ",)
        ]),
      
          ),
          ),
        body: TabBarView(children: [
          _buildComingsoon(),
          _buildEveryonesWatching(),


        ]),),
    );
  }
  
  Widget _buildComingsoon() {
    
    return  ListView.builder(
      itemCount: 10, itemBuilder: (BuildContext context,index)=> const Comingsoonwidget(),
    );

  }
  
  Widget   _buildEveryonesWatching() {
return ListView.builder(
  itemCount: 10, itemBuilder: (BuildContext context, index)=> Everyoneswatchingwidgets(),);

  }
 
}

