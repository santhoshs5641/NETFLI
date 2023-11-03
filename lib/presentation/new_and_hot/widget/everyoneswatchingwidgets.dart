import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widgets.dart';

class Everyoneswatchingwidgets extends StatelessWidget {
  const Everyoneswatchingwidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("Friends"
         ,style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold
                     ),),
                     kheight,
                      Text("This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work, life and love in 1990s manhattan.",
                      style: TextStyle(
                      color: kgreycolors,
                
                     ),
                     ),
                     kheight50,
                     videowidhets(),
                     kheight,
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                          Custombutton(icon: Icons.share, 
                        title: 'Share',
                        iconsize: 25,
                        textsize: 16,),
                        kwidth,
                        Custombutton(icon: Icons.add, 
                        title: 'My LIst',
                        iconsize: 25,
                        textsize: 16,),
                        kwidth,
                        Custombutton(icon: Icons.play_arrow, 
                        title: 'Play',
                        iconsize: 25,
                        textsize: 16,),
                        kwidth,
                      ],
                     )
    
      ],
    );
  }
}

