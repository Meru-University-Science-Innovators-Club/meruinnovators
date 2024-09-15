import 'package:flutter/material.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 12),
            child: InkWell(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/test3.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Partner name',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
