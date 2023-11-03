

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widgets.dart';

class Comingsoonwidget extends StatelessWidget {
  const Comingsoonwidget({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
        width: 50,
        height: 450,
       child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       mainAxisSize: MainAxisSize.min,
       children:  [
       Text("FEB",style: TextStyle(fontSize: 16,color: kgreycolors
      )),
       Text("11",style: TextStyle(letterSpacing: 4,fontSize: 16,
       fontWeight: FontWeight.bold),)],),),
        SizedBox(
              width: size.width - 50,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              videowidhets(),
             const Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("TALL GIRL 2",
                 style: TextStyle(fontSize: 30,
                 letterSpacing: -4,
                 fontWeight: FontWeight.bold),
                 ),
                  Spacer(),
                 Row(
                  children: [
                    Custombutton(icon: Icons.all_out_sharp, 
                    title: 'Remind me',
                    iconsize: 20,
                    textsize: 10,),
                    kwidth,
                    Custombutton(icon: Icons.info, 
                    title: 'info',
                    iconsize: 20,
                    textsize: 10,),
                    kwidth
    
                  
                  ],
                 ),
                 
               ],
             ),
             kheight,
                 Text("Coming on friday"),
                 kheight,
                 Text("Tall girl 2",style: TextStyle(fontSize: 18,
                 fontWeight: FontWeight.bold
                 ),),
                 kheight,
                  Text("Landing the lead in the school musical is a dream come true for jodi,until the pressure send her confidence - and  her relationship - into a tailspain.",
                  style: TextStyle(
                  color: kgreycolors,
            
                 ),)
              ],),
              
            ),
      ],
    );
  }
}

