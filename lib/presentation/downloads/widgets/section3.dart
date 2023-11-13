import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

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