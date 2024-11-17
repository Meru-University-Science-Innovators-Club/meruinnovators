import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';
import 'package:meruinnovators/features/settings/ui/widgets/setting_tab.dart';

class SecuritySection extends StatelessWidget {
  const SecuritySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            SettingTab(
              text: 'Privacy and Policy',
              onPressed: () {},
            ), SettingTab(
              text: 'Account Security',
              subtitle: const SubTitleText(text: 'Enable Two-factor Authentication'),
              onPressed: () {},
              trailing: const Row(mainAxisSize: MainAxisSize.min,
                children: [
                  SubTitleText(text: 'disabled',color: Colors.redAccent,),
                  SizedBox(width: 4,),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 25,
                  ),
                ],
              ),
            ), SettingTab(
              text: 'Account Management',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
