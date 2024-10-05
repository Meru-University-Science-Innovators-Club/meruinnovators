import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/features/aboutus/ui/widgets/image_cliper.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutusScreen extends StatefulWidget {
  const AboutusScreen({super.key});

  @override
  State<AboutusScreen> createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
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
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.schoolpic,
                      fit: BoxFit.cover,
                      height: 780 * 0.6,
                    ),
                    Positioned.fill(child: Container(color: Colors.black38)),
                  ],
                ),
              ),
            ),
            FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString(AppAssets.aboutusmd),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.data!,
                    onTapLink: (link, text, title) {
                      linkOnTapHandler(context, link, text, title);
                      setState(() {});
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> linkOnTapHandler(
    BuildContext context,
    String text,
    String? url,
    String title,
  ) async {
    await launchUrl(Uri.parse(url ?? 'https://www.google.com'));
  }
}
