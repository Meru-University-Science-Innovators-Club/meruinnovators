import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/misc.dart';

import 'package:meruinnovators/features/blogs/ui/widgets/blog_post.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 40,
              centerTitle: true,
              title: Text(
                'Articles',
                style: TextStyle(
                  color: colorScheme.onSecondary
                ),
              ),

              actions: [
                Container(
                  height: 25,
                  width: 25,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.sort,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const BlogPosts();
                },
                childCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
