import 'package:flutter/material.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 260,
        height: 260,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 253, 234, 23),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          shadows: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(2, 2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 40,
              child: ColoredBox(
                color: Colors.green.shade400,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 260,
                      // height: 230,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: const Text(
                              'Android Hackathon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const Text(
                            'The competition consists of two categories having two heads: 1. Solve-It (Category -1 only):If you have an idea that satisfies any of the given theme, find a solution, map it into a prototype without code, and submit it. Two teams will be announced as a winner0 2. Android Hackathon: Select a one problem statement from given set of statements that satisfies any of the given themes, find a solution, convert it into a code and execute it on a mobile device. Three teams will be selected as winners (First, Second and Third place). \n Note: Hackathon is held at GMR Institute of Technology in Zenith 2.0 (National Level Technical Symposium) fest. \nEach head has four rounds: \nRound-1: Idea will be scrutinized by AAIC team.\n Round-2: Selected ideas will be supported by voting and judged by panel constituted by AAIC.\nRound-3: Selected teams in Round-2 will upload the presentation that will be evaluated by judges.\nRound-4: Selected teams in Round-3 will have to upload use-case model and block diagram of your submission idea that will be evaluated by judges.\nRound-5: A final presentation will be held at GMRIT campus and evaluated by peer support and judges.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Host: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'GDSC',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.yellow.shade500,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'time: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  '8:00 am',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 7, 5, 5),
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                 
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 60,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            const BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey,
                              spreadRadius: 1,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'RSVP',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 10),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.yellowAccent,
                          ),
                          Text(
                            '12th October',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.redAccent,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
