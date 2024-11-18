import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});


  @override
  Widget build(BuildContext context) {

    List<String> tags = [
      'javascript',
      'mongodb',
      'mongodb',
      'mongodb',
      'mongodb',
      'ui',
    ];
    return SizedBox(
      height: 250,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SizedBox(
                  width: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 4,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1520110120835-c96534a4c984?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaCUyMGV2ZW50fGVufDB8fDB8fHww',
                              ),
                            ),
                          ),
                        ),
                        const TitleTexts(
                          text: 'TaskMate - Task Management App',
                        ),
                        const SizedBox(height: 4,),

                        const Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                         , maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4,),
                        Container(
                          height: 20,
                          child: ListView.builder(itemBuilder: (context,index){
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              padding: const EdgeInsets.symmetric(horizontal: 4,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue.withOpacity(.2),
                              ),
                              child: Text(
                                tags[index],
                                maxLines: 1,
                              ),
                            );
                          },scrollDirection: Axis.horizontal,
                            itemCount: tags.length,
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
