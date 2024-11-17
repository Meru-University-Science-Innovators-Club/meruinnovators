import 'package:flutter/material.dart';
import 'package:meruinnovators/features/accaunt/ui/widgets/UserInfoCard.dart';
import 'package:meruinnovators/features/accaunt/ui/widgets/project_section.dart';
import 'package:meruinnovators/features/blogs/ui/widgets/blog_post.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(shrinkWrap: true,
          slivers: [
            const SliverToBoxAdapter(
              child: UserInfoCard(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ProjectsSection(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'My Articles',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'
                  ),
                ),
              ),
            ),
            SliverList.builder(itemBuilder: (context,index){
              return BlogPosts();
            },itemCount: 5,)
          ],
        ),
      ),
    );
  }
}
