import 'package:flutter/material.dart';

class UpcomingEventCard extends StatelessWidget {
  const UpcomingEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 260,
        height: 260,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.surface,
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
                          child: Text(
                            'Android Hackathon',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          'The competition consists of two categories having two heads: 1. Solve-It (Category -1 only):If you have an idea that satisfies any of the given theme, find a solution, map it into a prototype without code, and submit it. Two teams will be announced as a winner0 2. Android Hackathon: Select a one problem statement from given set of statements that satisfies any of the given themes, find a solution, convert it into a code and execute it on a mobile device. Three teams will be selected as winners (First, Second and Third place). \n Note: Hackathon is held at GMR Institute of Technology in Zenith 2.0 (National Level Technical Symposium) fest. \nEach head has four rounds: \nRound-1: Idea will be scrutinized by AAIC team.\n Round-2: Selected ideas will be supported by voting and judged by panel constituted by AAIC.\nRound-3: Selected teams in Round-2 will upload the presentation that will be evaluated by judges.\nRound-4: Selected teams in Round-3 will have to upload use-case model and block diagram of your submission idea that will be evaluated by judges.\nRound-5: A final presentation will be held at GMRIT campus and evaluated by peer support and judges.',
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 9,
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
                            Text(
                              'Host: ',
                              style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                'GDSC',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'time: ',
                              style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                '8:00 am',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                   ,
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
                        ),
                        child: Center(
                          child: Text('RSVP',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  )),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          Text(
                            '12th October',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
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
