import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/widgets/social_button.dart';

class UserInfoCard extends StatefulWidget {
  const UserInfoCard({super.key});

  @override
  State<UserInfoCard> createState() => _UserInfoCardState();
}

class _UserInfoCardState extends State<UserInfoCard> {
  List<String> social = [
    "https://github.com/piexie3",
    "https://x.com/emmanuel_dev2",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .226,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .18,
                    child: Image.asset(
                      AppAssets.test1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .12,
                  left: 30,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.schoolpic),
                      radius: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emmanuel Bett',
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                ),
                Text(
                  '@emmanuel_dev2',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
                // const SizedBox(
                //   height: 4,
                // ),
                Text(
                  'nairobi · joined nov 2024 · open to work',
                  style: Theme.of(context).primaryTextTheme.bodyMedium,
                ),
                Text(
                  'Playing long term games with long term people',
                  style: Theme.of(context).primaryTextTheme.bodyMedium,
                ),
                Wrap(
                  spacing: 8, // Horizontal space between items
                  children: List.generate(6, (index) {
                    return Container(
                      height: 30,
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(.3),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CachedNetworkImage(
                            imageUrl: 'https://gitlab.com/favicon.ico',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('Founder'),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 8,
                  children: List.generate(social.length, (index) {
                    Uri uri = Uri.parse(social[index]);
                    String domain = uri.host;
                    // return CircleAvatar(
                    //   radius: 15,
                    //   backgroundColor: Colors.white.withOpacity(.3),
                    //   child: Container(
                    //       decoration: BoxDecoration(shape: BoxShape.circle),
                    //       width: 25,
                    //       height: 25,
                    //       child: Image.network(
                    //           'https://$domain/favicon.ico',fit:
                    //         BoxFit.cover,),),
                    // );
                    return SocialButton(
                      ontap: () {},
                      asset: 'https://$domain/favicon.ico',
                      isNetwork: true,
                    );
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
