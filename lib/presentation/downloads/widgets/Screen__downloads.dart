// ignore_for_file: unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';

class Screendownload extends StatelessWidget {
  Screendownload({super.key}); // Constructor of the Screendownload class

final _widgetsList = [
  const _smartdownloads(),
           Section2(),
         const section3()

];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidgets(title: 'Downloads'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(7),
        itemBuilder: (ctx, index)=>_widgetsList[index],
       separatorBuilder: (ctx, index)=>SizedBox(height: 20,),
        itemCount: _widgetsList.length)
    );
  }
}
class Section2 extends StatelessWidget {
   Section2({super.key});
    final List<String> imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qA5kPYZA7FkVvqcEfJRoOy4kpHg.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fiVW06jE7z9YnO4trhaMEdclSiC.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(children: [
      const Text("Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolors,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          kheight,
          const Text(
              "We will download a personalized selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),),
              kheight,
          SizedBox(
            width: size.width,
            height: size.width,

            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadImageWidgets(imageList: imageList[0],
                 margin: const EdgeInsets.only(left: 170,top:50 ),
                angle: 20,
                size: Size(size.width*0.25, size.width*0.55),),
                DownloadImageWidgets(imageList: imageList[1],
                 margin: const EdgeInsets.only(right: 170, top: 50),
                angle: -20,
                size: Size(size.width*0.25, size.width*0.55)),
                DownloadImageWidgets(imageList: imageList[2], 
                radius: 20,
                margin: const EdgeInsets.only(bottom: 35, top: 50),
                size: Size(size.width*0.3, size.width*0.45)),
              ],
            ),
          ),
    ],);
  }
}
class section3 extends StatelessWidget {
  const section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        child: MaterialButton(
              color: kButtonbluecolors,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                
                child: Text(
                  'Set Up',
                  style: TextStyle(color: kwhitecolors, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
      ),
          kheight,
          MaterialButton(
            color: kButtonwhitecolors,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'See What You Can Download',
                style: TextStyle(color: kBlackColors, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),

    ],);
  }
}
class _smartdownloads extends StatelessWidget {
  const _smartdownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(Icons.settings, color: kwhitecolors),
        kwidth,
        Text("Smart Download"),
      ],
    );
  }
}

class DownloadImageWidgets extends StatelessWidget {
  const DownloadImageWidgets({
    super.key,
    required this.imageList,
    this.angle=0,
    required this.margin,
    required this.size,
    this.radius=10
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle*pi/180,
        //child: ClipRRect(
        //  borderRadius: BorderRadius.circular(radius),
          child: Container(
           // margin: margin,
            width: size.width*2 ,
            height: size.width *2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  fit: BoxFit.contain,
                    image: NetworkImage(imageList))),
          ),
        ),
      
    );
  }
}
 