import 'package:flutter/material.dart';
import 'package:meruinnovators/features/events/ui/widgets/eventcard.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 780,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return  const Eventcard();
              },
            ),
          ),
        ),
      ),
    );
  }
}
