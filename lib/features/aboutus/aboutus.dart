import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/features/aboutus/ui/widgets/image_cliper.dart';

class AboutusScreen extends StatelessWidget {
  const AboutusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: ImageClipper(),
                child: Image.asset(
                  AppAssets.schoolpic,
                  fit: BoxFit.cover,
                  width: 360,
                  colorBlendMode: BlendMode.darken,
                  height: 780 * 0.6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
