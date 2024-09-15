import 'package:flutter/material.dart';
import 'package:meruinnovators/features/home/ui/widgets/aboutus.dart';
import 'package:meruinnovators/features/home/ui/widgets/our_partners.dart';
import 'package:meruinnovators/features/home/ui/widgets/testimoials.dart';
import 'package:meruinnovators/features/home/ui/widgets/upcoming_events.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required this.switchtab,
    super.key,
  });
  final VoidCallback? switchtab;

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
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Upcomming Events',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const EventsScreen(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.greenAccent,
                        ),
                      ),
                      // splashColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Container(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.only(left: 12),
                      child: const UpcomingEvents(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Our Partners',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const OurPartners(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Testimonials',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.only(left: 12),
                      child: const Testimoials(),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'About Us',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text("See All"),
                    //   // splashColor: Colors.transparent,
                    // )
                  ],
                ),
              ),
              Container(
                height: 200,
                child: const Aboutus(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
