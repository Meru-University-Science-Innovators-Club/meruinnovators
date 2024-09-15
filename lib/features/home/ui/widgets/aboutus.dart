import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/utils/router.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(
        MUSTRouter.aboutusRoute,
      ),
      child: Container(
        width: 360,
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.green.shade400,
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
              const Positioned(
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
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 2100,
                      // padding: EdgeInsets.only(left: 150),
                      child: Text(
                        'Innovtion is a club meant to be helpfuln in innvention and mentoring students to persue their dreams inTechnology field',
                        style: TextStyle(
                          color: Colors.black87,
                          // fontSize: 15.0,
                        ),
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
    );
  }
}
