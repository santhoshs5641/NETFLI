import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/model/movie.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widgets.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

// class EveryonesWatchingWidget extends StatelessWidget {
//   const EveryonesWatchingWidget({super.key, required this.movie});
//   final Movie movie;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         kheight,
//         Text(
//           movie.title,
//           style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//         ),
//         kheight,
//         Text(
//           movie.overview,
//           style:const TextStyle(color: kgreycolors, fontSize: 16),
//           textAlign: TextAlign.justify,
//         ),
//         kheight,
//         VideoWidget(image: movie.posterPath),
//         kheight,
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Custombutton(
//               icon: Icons.share,
//               title: "Share",
//               iconsize: 25,
//               textsize: 16,
//             ),
//             kwidth,
//             Custombutton(
//               icon: Icons.add,
//               title: "My List",
//               iconsize: 25,
//               textsize: 16,
//             ),
//             kwidth,
//             Custombutton(
//               icon: Icons.play_arrow,
//               title: "Play",
//               iconsize: 25,
//               textsize: 16,
//             ),
//             kwidth
//           ],
//         ),
//         kheight
//       ],
//     );
//   }
// }
class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          movie.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
          movie.overview,
          style: const TextStyle(
            color: kgreycolors,
          ),
        ),
        kheight50,
        VideoWidget(
          image: movie.posterPath,
        ),
        kheight,
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Custombutton(
              icon: Icons.share,
              title: "Share",
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            Custombutton(
              icon: Icons.add,
              title: "My list",
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            Custombutton(
              icon: Icons.play_arrow,
              title: "play",
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
