import 'package:flutter/material.dart';
import 'package:meruinnovators/common/data/models/page_item.dart';
import 'package:meruinnovators/common/widgets/bottom_nav/bottom_nav_bar.dart';
import 'package:meruinnovators/features/accaunt/ui/profile.dart';
import 'package:meruinnovators/features/blogs/ui/blogs.dart';
import 'package:meruinnovators/features/events/ui/events_screen.dart';
import 'package:meruinnovators/features/home/ui/home.dart';

/// Default Screen to handle all the UIs after the Splash Screen
class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({super.key});

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  PageController pageController = PageController();
  int selectedPageIndex = 0;

  final List<PageItem> pages = [];

  @override
  void initState() {
    super.initState();
    selectedPageIndex = pageController.initialPage;
    pages.addAll([
      PageItem(
        title: 'Home',
        icon: 'home_outlined',
        screen: HomeScreen(
          switchtab: () {
            switchTab(1);
          },
        ),
      ),
      const PageItem(
        title: 'Events',
        icon: 'events',
        screen: EventsScreen(),
      ),
      const PageItem(title: 'Blogs', icon: 'blogs', screen: BlogsScreen()),
      const PageItem(
          title: 'Account', icon: 'account', screen: ProfileScreen(),),
    ]);
  }

  void switchTab(int index) => setState(
        () {
          selectedPageIndex = index;
          pageController.jumpToPage(index);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedPageIndex,
        onPageChange: (int index) {
          setState(() {
            selectedPageIndex = index;
            pageController.jumpToPage(index);
          });
        },
        pages: pages,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: switchTab,
        physics: const NeverScrollableScrollPhysics(),
        children: pages.map<Widget>((item) => item.screen).toList(),
      ),
    );
  }
}
