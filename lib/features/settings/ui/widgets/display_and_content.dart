import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';
import 'package:meruinnovators/common/utils/misc.dart';
import 'package:meruinnovators/features/settings/ui/widgets/setting_tab.dart';

class DisplayAndContent extends StatefulWidget {
  const DisplayAndContent({super.key});

  @override
  State<DisplayAndContent> createState() => _DisplayAndContentState();
}

class _DisplayAndContentState extends State<DisplayAndContent> {
  bool _isSwichValue = false;

  @override
  Widget build(BuildContext context) {
    final (isLightTheme, colorScheme) = Misc.getTheme(context);
    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              title: TitleTexts(
                text: _isSwichValue ? 'Light Theme' : 'Dark Theme',
              ),
              trailing: Switch(
                value: _isSwichValue,
                activeThumbImage: const AssetImage(AppAssets.darkTheme),
                inactiveThumbImage: const AssetImage(AppAssets.lightTheme),
                onChanged: (value) {
                  setState(() {
                    _isSwichValue = value;
                  });
                },
              ),
            ),
            SettingTab(
              text: 'Language',
              onPressed: () {},
              trailing: const TitleTexts(text: 'ENGLISH'),
            ),
          ],
        ),
      ),
    );
  }
}
