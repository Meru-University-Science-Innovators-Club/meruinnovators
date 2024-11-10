import 'package:flutter/material.dart';
import 'package:meruinnovators/common/constants/assets_constants.dart';
import 'package:meruinnovators/features/accaunt/ui/widgets/UserInfoCard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             UserInfoCard()
            ],
          ),
        ),
      ),
    );
  }
}
