import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [Image.asset(AppAssets.test1)],
            ),
          )
        ],
      )),
    );
  }
}
