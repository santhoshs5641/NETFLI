import 'package:flutter/material.dart';
import 'package:netflix/core/api.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/Screen__downloads.dart';
import 'package:netflix/presentation/downloads/widgets/downloadimage.dart';

class Section2 extends StatelessWidget {
   Section2({super.key});
  //   final List<String> imageList = [
  //   "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",
  //   "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qA5kPYZA7FkVvqcEfJRoOy4kpHg.jpg",
  //   "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fiVW06jE7z9YnO4trhaMEdclSiC.jpg"
  // ];

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
              FutureBuilder<List<String>>(
                future: Api().getDownloadImageUrls(),
                builder: (context, snapshot){
                  if(snapshot.connectionState== ConnectionState.waiting || 
                  snapshot.connectionState == ConnectionState.none){
return Center(
  child: CircleAvatar(backgroundColor: kgreycolors.withOpacity(0.5),
  radius: size.width *0.4,
  child: const CircularProgressIndicator(),
  ),
);
                  }else if(snapshot.hasError){
                    return Center(
                      child: CircleAvatar(backgroundColor: kgreycolors.withOpacity(0.5),
                      radius: size.width*0.4,
                      child: const CircularProgressIndicator()
                      ,),
                    );
              
                  }
                  else if(!snapshot.hasData || snapshot.data!.isEmpty){
                    return const Text('No data available');
                  }else{
                    return SizedBox(
            width: size.width,
            height: size.width,

            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadImageWidgets(imageList: snapshot.data![0],
                 margin: const EdgeInsets.only(left: 170,top:50 ),
                angle: 20,
                size: Size(size.width*0.25, size.width*0.55),),
                DownloadImageWidgets(imageList: snapshot.data![1],
                 margin: const EdgeInsets.only(right: 170, top: 50),
                angle: -20,
                size: Size(size.width*0.25, size.width*0.55)),
                DownloadImageWidgets(imageList: snapshot.data![2], 
                radius: 20,
                margin: const EdgeInsets.only(bottom: 35, top: 50),
                size: Size(size.width*0.3, size.width*0.45)),
              ],
            ),
          );
                  }
                },
              ),
           
    ],);
  }
}