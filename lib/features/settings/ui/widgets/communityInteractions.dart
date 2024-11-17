import 'package:flutter/material.dart';
import 'package:meruinnovators/features/settings/ui/widgets/setting_tab.dart';

class CommunityInteractions extends StatelessWidget {
  const CommunityInteractions({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            SettingTab(text: 'FAQ', onPressed: (){},),
            SettingTab(text: 'Contact Support', onPressed: (){},),
            SettingTab(text: 'Feedback', onPressed: (){},),
            SettingTab(text: 'AboutUs', onPressed: (){},),
            SettingTab(text: 'Visit Our Website', onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
