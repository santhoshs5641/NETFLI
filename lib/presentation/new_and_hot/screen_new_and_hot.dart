
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widget/comingsoon.dart';
import 'package:netflix/presentation/new_and_hot/widget/everyoneswatchingwidgets.dart';

// class ScreenNewAndHot extends StatelessWidget {
//   const ScreenNewAndHot({super.key});

//   @override
//  Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(90),
//           child: AppBar(
//             title: const Text(
//               "New & Hot",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: kwhitecolors),
//             ),
//             actions: [
//               const Icon(
//                 Icons.cast,
//                 color: Colors.white,
//                 size: 35,
//               ),
//               kwidth,
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 30,
//                     width: 35,
//                     decoration: const BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
//                             fit: BoxFit.cover,
//                             scale: 1)),
//                   ),
//                 ],
//               ),
//               kwidth
//             ],
//             bottom: TabBar(
//                 isScrollable: true,
//                 unselectedLabelColor: kwhitecolors,
//                 labelColor: kBlackColors,
//                 labelStyle:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 indicator:
//                     BoxDecoration(color: kwhitecolors, borderRadius: kradius10),
//                 tabs: const [
//                   Tab(
//                     text: "🍿 Coming soon",
//                   ),
//                   Tab(
//                     text: "👀 Everyone's watching",
//                   )
//                 ]),
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             _buildComingSoon(),
//             _buildEveryonesWatching(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildComingSoon() {
//     return ValueListenableBuilder(
//         valueListenable: upComingListNotifeir,
//         builder: (context, value, _) {
//           return ListView.builder(
//            itemCount: 10,
//             itemBuilder: (context, index) {
//               // var data = value[index];
//               // return Comingsoonwidget(
//               //   movie: data,
            
//               // );
//               if (value.isNotEmpty && index < value.length) {
//         var data = value[index];
//         return Comingsoonwidget(
//           movie: data,
//         );
//       } else {
//         //return SizedBox(); // Return an empty widget or handle the empty list case.
//       }
//     },
//   );
//             },
//           );
//         }
//   }

//   Widget _buildEveryonesWatching() {
//     return ValueListenableBuilder(
//         valueListenable: topRatedListNotifeir,
//         builder: (context, value, _) {
//           return ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               var data = value[index];
//               return EveryonesWatchingWidget(
//                 movie: data,
//               );
//             },
//           );
//         });
//   }

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: kwhitecolors,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 35,
                  height: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                kwidth,
              ],
              bottom: TabBar(
                labelColor: kBlackColors,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: kwhitecolors,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: kwhitecolors,
                  borderRadius: kradius30,
                ),
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ]),
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ValueListenableBuilder(
      valueListenable: upComingListNotifeir,
      builder: (context, value, _) {
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            var data = value[index];
            return ComingSoonWidget(movie: data);
          },
        );
      },
    );
  }

  Widget _buildEveryonesWatching() {
    return ValueListenableBuilder(
      valueListenable: topRatedListNotifeir,
      builder: (context, value, _) {
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            var data = value[index];
            return EveryonesWatchingWidget(
              movie: data,
            );
          },
        );
      },
    );
  }
}
