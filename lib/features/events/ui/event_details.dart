import 'package:flutter/material.dart';
import 'package:meruinnovators/common/widgets/button.dart';
import 'package:meruinnovators/features/events/ui/widgets/event_detail_appBar.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const EventsDetailsAppBar(),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Upcoming Hack-night: Code, Collaborate, Create!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        CircleButton(
                          onPressed: () {},
                          child: const Icon(Icons.bookmark_outline),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Tue May,2025")
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.pin_drop_rounded,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Meru innovators workshop")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Speaker(s)",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 24),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                3,
                                (index) => const IntrinsicWidth(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        'https://media.istockphoto.com/id/1654536486/photo/asian-mature-businessman-coaching-motivation-speech-in-business-conference-meeting-seminar.webp?a=1&b=1&s=612x612&w=0&k=20&c=IRzQoSCVunDhItcbwikKYV9BxoSnfXZwHW99fwronP0=',
                                      ),
                                    ),
                                    title: Text("Emmanuel Bett"),
                                    subtitle: Text('Andoid developer'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Text(
                            """We’re excited to announce our upcoming Hacknight event, where developers, designers, and tech enthusiasts will come together for an evening of creativity, collaboration, and coding. This is a fantastic opportunity to work on personal projects, team up with others, or dive into challenges that spark your curiosity. Whether you’re a seasoned coder or someone looking to explore new technologies, our Hacknight will be a fun and inclusive environment for all skill levels.
                
The event will take place on [insert date] from [start time] to [end time] at [venue or online platform]. Throughout the night, participants will have the chance to collaborate on coding projects, build new applications, or even contribute to open-source software. We’ll provide a space where ideas can flow, and participants can get hands-on experience with new tools and technologies. Whether you’re tackling a complex problem or just experimenting with something new, the goal is to learn, create, and have fun.
                          
In addition to coding, the Hacknight is a great chance to meet like-minded individuals, share knowledge, and build connections within the tech community. We’ll have mentors on hand to offer guidance, and there will be plenty of opportunities for networking and sharing ideas. Snacks and refreshments will be available to fuel your creativity, and we’ll have some fun surprises along the way to keep the energy high.
                          
At the end of the night, we’ll have a short demo session where you can showcase what you’ve worked on. Whether you’ve built a new feature, developed a prototype, or solved a tricky bug, this is your chance to share your progress with the group. We encourage everyone to participate, but there’s no pressure to have a completed project — Hacknight is all about the journey and the experience.
                          
So, grab your laptop, bring your passion, and come join us for an evening of innovation, collaboration, and coding! It’s going to be a night to remember, and we can’t wait to see what you create.
                            """),
                        const SizedBox(
                          height: 42,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
