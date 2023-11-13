
import 'package:flutter/material.dart';
import 'package:netflix/presentation/Search/screen_search.dart';
import 'package:netflix/presentation/downloads/Screen__downloads.dart';
import 'package:netflix/presentation/fast_laugh/Screen_fast_laugh.dart';
import 'package:netflix/presentation/home/Screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final _pages=[  
   const ScreenHome(),
   const ScreenNewAndHot(),
   const ScreenFastLaugh(),
   const ScreenSearch (),
    Screendownload()
  ];

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexchangeNotifier, builder: (context ,int index,_){
          return  _pages[index];
        
        },),
      ),
      bottomNavigationBar: const BottomnNavigationWidget(),
      );
  }
}