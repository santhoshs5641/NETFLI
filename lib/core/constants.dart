import 'package:flutter/material.dart';
import 'package:netflix/domain/model/movie.dart';

const kwidth = SizedBox(width: 10,);
const kheight = SizedBox(height: 10,);
const kheight20 = SizedBox(height: 20,);
const kheight50 = SizedBox(height: 50,);



// borderraduis

 BorderRadius kradius10 =BorderRadius.circular(10);
BorderRadius kradius30 =BorderRadius.circular(30);
//  constant image
const Kmainimage = "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/9jkThAGYj2yp8jsS6Nriy5mzKFT.jpg";
const newhot ='https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/35z8hWuzfFUZQaYog8E9LsXW3iI.jpg';
const imagePath ='https://image.tmdb.org/t/p/w500';


// textstyle
TextStyle khometitletext =const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,);



// notifiers
// ValueNotifier<List<Movie>> trendingNowListNotifeir = ValueNotifier([]);
// ValueNotifier<List<Movie>> topRatedListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> trendingNowListNotifier = ValueNotifier([]);
ValueNotifier<List<Movie>> topRatedListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> top10TvShowsInIndiaTodayListNotifeir =
    ValueNotifier([]);
ValueNotifier<List<Movie>> upComingListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> searchResultListNotifeir = ValueNotifier([]);
// Define other ValueNotifier variables in a similar manner if you are using them.
TextStyle kHomeTitleText = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
);