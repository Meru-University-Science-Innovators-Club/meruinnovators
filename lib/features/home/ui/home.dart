import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meruinnovators/app.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/common/widgets/button.dart';
import 'package:meruinnovators/features/home/ui/widgets/SwitchToAllBar.dart';
import 'package:meruinnovators/features/home/ui/widgets/aboutus.dart';
import 'package:meruinnovators/features/home/ui/widgets/our_partners.dart';
import 'package:meruinnovators/features/home/ui/widgets/testimoials.dart';
import 'package:meruinnovators/features/home/ui/widgets/upcoming_events.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.switchEvents,
    super.key,
  });

  final VoidCallback switchEvents;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final (isLightTheme, colorscheme) = Misc.getTheme(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: false,
              toolbarHeight: 50,
              title: Text(
                'MUSTInnovators',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp,
                ),
              ),
              actions: [
                CircleButton(
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            // Slider of past events pictures
            SwitchToAllBar(
              onPressed: widget.switchEvents,
              message: 'Upcoming events',
            ),
            const UpcomingEventCard(),
            SwitchToAllBar(onPressed: () {}, message: 'Our Partners'),
            const OurPartners(),
            SwitchToAllBar(onPressed: () {}, message: 'Testimonials'),
            const Testimonials(),
            SwitchToAllBar(onPressed: () {}, message: 'About Us'),
            const AboutUsCard(),
          ],
        ),
      ),
    );
  }
}
