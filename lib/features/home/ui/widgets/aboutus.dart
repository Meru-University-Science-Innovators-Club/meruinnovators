import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/utils/router.dart';

class AboutUsCard extends StatelessWidget {
  const AboutUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: InkWell(
        onTap: () => GoRouter.of(context).pushNamed(
          MUSTRouter.aboutusRoute,
        ),
        child: Container(
          // width: 360,
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey,
                  offset: Offset(2, 2)),
            ],
          ),
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 200,
                    width: 130,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/test3.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                Positioned(
                  left: 135,
                  bottom: 0,
                  right: 0,
                  top: 0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Innovation Club',
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 2100,
                        // padding: EdgeInsets.only(left: 150),
                        child: Text(
                          'Meru Science Innovation Club is meant to be helpful in innvention and mentoring students to persue their dreams in Technology field. You want to find more about us?',
                          style: Theme.of(context).textTheme.bodyLarge,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
