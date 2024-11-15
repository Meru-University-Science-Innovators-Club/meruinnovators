import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:sizer/sizer.dart';

class Eventcard extends StatelessWidget {
  const Eventcard({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, colorScheme) = Misc.getTheme(context);
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).pushNamed(MUSTRouter.eventsDetailsRoute),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1520110120835-c96534a4c984?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaCUyMGV2ZW50fGVufDB8fDB8fHww',
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Text(
                      'Android Hackathon',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Text(
                      'The competition consists of two categories having two heads: 1. Solve-It (Category -1 only):If you have an idea that satisfies any of the given theme, find a solution, map it into a prototype without code, and submit it. Two teams will be announced as a winner0 2. Android Hackathon: Select a one problem statement from given set of statements that satisfies any of the given themes, find a solution, convert it into a code and execute it on a mobile device. Three teams will be selected as winners (First, Second and Third place). \n Note: Hackathon is held at GMR Institute of Technology in Zenith 2.0 (National Level Technical Symposium) fest. \nEach head has four rounds: \nRound-1: Idea will be scrutinized by AAIC team.\n Round-2: Selected ideas will be supported by voting and judged by panel constituted by AAIC.\nRound-3: Selected teams in Round-2 will upload the presentation that will be evaluated by judges.\nRound-4: Selected teams in Round-3 will have to upload use-case model and block diagram of your submission idea that will be evaluated by judges.\nRound-5: A final presentation will be held at GMRIT campus and evaluated by peer support and judges.',
                      maxLines: 8,
                      style: TextStyle(
                        fontSize: 12,
                        color: colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Tue May,2025")
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.pin_drop_rounded,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Meru innovators workshop")
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white.withOpacity(.4))
                    ),
                      child: const Text(
                        'RSVP',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // child: Container(
      //   width: 780,
      //   padding: const EdgeInsets.only(bottom: 12),
      //   child: Card(
      //     margin: const EdgeInsets.symmetric(horizontal: 10),
      //     clipBehavior: Clip.antiAlias,
      //     // semanticContainer: false,
      //     child: SizedBox(
      //       child: Row(
      //         textDirection: TextDirection.ltr,
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Container(
      //             // height: 100,
      //             height: 200,
      //             width: 130,
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage(
      //                   'assets/images/test2.jpg',
      //                 ),
      //                 fit: BoxFit.cover,
      //               ),
      //               borderRadius: BorderRadius.all(Radius.circular(8)),
      //             ),
      //           ),
      //           const SizedBox(
      //             width: 4,
      //           ),
      //           SizedBox(
      //             width: 190,
      //             child: Column(
      //               children: [
      //                 const Text(
      //                   'Android Hackathon',
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.w800,
      //                     fontSize: 16,
      //                     color: Colors.redAccent,
      //                   ),
      //                   overflow: TextOverflow.ellipsis,
      //                   maxLines: 1,
      //                   textAlign: TextAlign.center,
      //                 ),
      //                 const SizedBox(
      //                   height: 8,
      //                 ),
      //                 const SizedBox(
      //                   child: Text(
      //                     'The competition consists of two categories having two heads: 1. Solve-It (Category -1 only):If you have an idea that satisfies any of the given theme, find a solution, map it into a prototype without code, and submit it. Two teams will be announced as a winner0 2. Android Hackathon: Select a one problem statement from given set of statements that satisfies any of the given themes, find a solution, convert it into a code and execute it on a mobile device. Three teams will be selected as winners (First, Second and Third place). \n Note: Hackathon is held at GMR Institute of Technology in Zenith 2.0 (National Level Technical Symposium) fest. \nEach head has four rounds: \nRound-1: Idea will be scrutinized by AAIC team.\n Round-2: Selected ideas will be supported by voting and judged by panel constituted by AAIC.\nRound-3: Selected teams in Round-2 will upload the presentation that will be evaluated by judges.\nRound-4: Selected teams in Round-3 will have to upload use-case model and block diagram of your submission idea that will be evaluated by judges.\nRound-5: A final presentation will be held at GMRIT campus and evaluated by peer support and judges.',
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.w400,
      //                     ),
      //                     maxLines: 6,
      //                     softWrap: true,
      //                     overflow: TextOverflow.ellipsis,
      //                     textAlign: TextAlign.start,
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: Divider(
      //                     thickness: 1,
      //                     height: 15,
      //                   ),
      //                 ),
      //                 const SizedBox(
      //                   // width: 620,
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Row(
      //                         children: [
      //                           Icon(
      //                             Icons.calendar_month,
      //                             color: Colors.yellowAccent,
      //                           ),
      //                           SizedBox(
      //                             width: 5,
      //                           ),
      //                           SizedBox(
      //                             width: 60,
      //                             child: Text(
      //                               '12th October',
      //                               style: TextStyle(
      //                                 fontSize: 10,
      //                                 fontWeight: FontWeight.w900,
      //                                 overflow: TextOverflow.ellipsis,
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Row(
      //                         children: [
      //                           Icon(
      //                             Icons.location_on_outlined,
      //                             color: Colors.yellowAccent,
      //                           ),
      //                           SizedBox(
      //                             width: 5,
      //                           ),
      //                           SizedBox(
      //                             width: 60,
      //                             child: Text(
      //                               'Innovation Center',
      //                               style: TextStyle(
      //                                 fontSize: 10,
      //                                 fontWeight: FontWeight.w900,
      //                                 overflow: TextOverflow.ellipsis,
      //                               ),
      //                               // softWrap: true,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //                 TextButton(
      //                   onPressed: () {},
      //                   child: const Text(
      //                     'RSVP',
      //                     style: TextStyle(
      //                       fontSize: 18,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.lightGreen,
      //                     ),
      //                     textAlign: TextAlign.center,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
