import 'package:flutter/material.dart';
import 'package:meruinnovators/features/home/ui/widgets/SwitchToAllBar.dart';
import 'package:meruinnovators/features/home/ui/widgets/aboutus.dart';
import 'package:meruinnovators/features/home/ui/widgets/our_partners.dart';
import 'package:meruinnovators/features/home/ui/widgets/testimoials.dart';
import 'package:meruinnovators/features/home/ui/widgets/upcoming_events.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Slider of past events pictures
              SwitchToAllBar(onPressed: widget.switchEvents, message: 'Upcomming events'),
              const UpcomingEventCard(),
             SwitchToAllBar(onPressed: (){}, message: 'Our Partners'),
              const OurPartners(),
             SwitchToAllBar(onPressed: (){}, message: 'Testimonials'),
              const Testimonials(),
              SwitchToAllBar(onPressed: (){}, message: 'About Us'),
              const AboutUsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
