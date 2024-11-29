import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';
import 'package:meruinnovators/features/settings/ui/widgets/communityInteractions.dart';
import 'package:meruinnovators/features/settings/ui/widgets/display_and_content.dart';
import 'package:meruinnovators/features/settings/ui/widgets/notification_section.dart';
import 'package:meruinnovators/features/settings/ui/widgets/security_section.dart';
import 'package:meruinnovators/features/settings/ui/widgets/setting_tab.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              iconTheme: IconThemeData(
                size: 30,
              ),
              pinned: true,
              centerTitle: true,
              title: Text('Settings'),
            ),
            const NotificationSection(),
            const SecuritySection(),
            const DisplayAndContent(),
            const CommunityInteractions(),
            SliverToBoxAdapter(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: ListTile(
                  onTap: () {},
                  title: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TitleTexts(text: 'Log Out',color: Colors.redAccent,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
