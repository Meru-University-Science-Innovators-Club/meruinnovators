import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/utils/router.dart';
import 'package:meruinnovators/common/widgets/button.dart';

import 'package:meruinnovators/features/blogs/ui/widgets/blog_post.dart';
import 'package:sizer/sizer.dart';

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
              pinned: true,
              centerTitle: true,
              title: Text(
                'Articles',
                style: TextStyle(color: colorScheme.onSecondary),
              ),

              actions: [
                CircleButton(
                  child: const Icon(Icons.add),
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(MUSTRouter.addBlogRoute),
                ),
                CircleButton(
                    child: const Icon(
                      Icons.sort,
                      size: 20,
                    ),
                    onPressed: () {},),
              ],
              // expandedHeight: 80,
              bottom: AppBar(
                toolbarHeight: 40,
                title: Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: SearchBar(
                    backgroundColor: WidgetStatePropertyAll(
                        colorScheme.surface.withOpacity(.3),),
                    textInputAction: TextInputAction.search,
                    leading: const Icon(Icons.search),
                    hintText: 'Search blogs ....',
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
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
