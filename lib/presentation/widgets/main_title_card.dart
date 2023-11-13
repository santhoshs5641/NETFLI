import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/model/movie.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';
class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title, required this.listNotifier
  });
  final String title;
   final ValueNotifier<List<Movie>> listNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
       MainTitle(title: title),
     kheight,
      LimitedBox(
        maxHeight: 200,
        child:ValueListenableBuilder(
                valueListenable: listNotifier,
                builder: (context, value, _) {
                  return ListView.builder(
                    itemCount: value.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var data = value[index];
                      return MainCard(
                        movie: data,
                      );
                    },
                  );
                }))
    
    ],
    );
  }
}

