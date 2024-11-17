import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/custom_texts.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({
    required this.text,
    required this.onPressed,
    super.key,
    this.trailing = const Icon(
      Icons.keyboard_arrow_right,
      size: 25,
    ),
    this.subtitle,
  });

  final String text;
  final VoidCallback onPressed;
  final Widget trailing;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        onTap: onPressed,
        title: TitleTexts(text: text),
        subtitle:subtitle,
        trailing: trailing,
      ),
    );
  }
}
