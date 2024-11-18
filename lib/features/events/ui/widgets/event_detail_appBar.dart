import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventsDetailsAppBar extends StatelessWidget {
  const EventsDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.3,
      flexibleSpace: FlexibleSpaceBar(

        background: Image.network(
          'https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
        ),
      ),
    );
  }
}
