import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:sizer/sizer.dart';

class BlogPosts extends StatelessWidget {
  const BlogPosts({
    super.key,
  });
  // final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);
    return GestureDetector(
      onTap: ()=>GoRouter.of(context).pushNamed(MUSTRouter.blogDetailsRoute),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: colorScheme.onSecondary,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    child: Text(
                      'Upcoming Hacknight: Code, Collaborate, Create!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: Text(
                      'To participate, simply register in advance to secure your spot. Bring your laptop and your coding spirit, and come ready to collaborate, create, and have a blast. Whether you’re aiming to create something new, solve a tough problem, or simply enjoy a fun night of coding, the hacknight is the place to be.',
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
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'),
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Arnold Smith',
                            style: TextStyle(
                              fontSize: 12,
                              color: colorScheme.onSecondary,
                            ),
                          ),
                          Text(
                            'Tue,May 2024',
                            style: TextStyle(
                              fontSize: 12,
                              color: colorScheme.onSecondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '·',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '6 min Read',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),

                    ],
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
    );
  }
}
