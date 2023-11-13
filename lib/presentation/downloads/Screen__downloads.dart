// ignore_for_file: unused_local_variable



import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/section2.dart';
import 'package:netflix/presentation/downloads/widgets/section3.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';


class Screendownload extends StatelessWidget {
  Screendownload({super.key}); // Constructor of the Screendownload class

final _widgetsList = [
   _smartdownload(),
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

class _smartdownload extends StatelessWidget {
   _smartdownload({
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


