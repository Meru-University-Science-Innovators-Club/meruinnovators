import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .27,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 150,
                      child: Image.asset(
                        AppAssets.test1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 30,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: const CircleAvatar(
                        // backgroundColor: Colors.greenAccent,
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
                          const SizedBox(height: 10,),
                          Text(
                            'Playing long term games with long term people',
                            style: Theme.of(context).primaryTextTheme.bodyMedium,
                          ),
                        ],
                      ),
            ),
          
          
          ],
        ),
      ),
    );
  }
}
