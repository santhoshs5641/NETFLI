
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/model/movie.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widgets.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget({super.key, required this.movie});
  final Movie movie;
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final DateFormat dayFormatterDay = DateFormat('EEEE');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                monthFormatter
                    .format(DateTime.parse(movie.releaseDate))
                    .toLowerCase(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kgreycolors),
              ),
              Text(
                dayFormatter.format(DateTime.parse(movie.releaseDate)),
                style: const TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                image: movie.posterPath,
              ),
              Row(
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Custombutton(
                        icon: Icons.notifications_none,
                        title: "Remind me",
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth,
                      Custombutton(
                        icon: Icons.info,
                        title: "Info",
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth,
                    ],
                  )
                ],
              ),
              kheight,
              Text(
                  "Coming on ${dayFormatterDay.format(DateTime.parse(movie.releaseDate))}"),
              kheight,
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              Expanded(
                child: Text(
                  movie.overview,
                  style: const TextStyle(
                    color: kgreycolors,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
