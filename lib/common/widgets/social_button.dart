import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:meruinnovators/common/utils/misc.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.ontap,
    required this.asset,
    this.color,
    this.isNetwork = false,
    super.key,
  });

  final VoidCallback ontap;
  final String asset;
  final Color? color;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    final (_,colorscheme) = Misc.getTheme(context);
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.4),
          border: Border.all(
            // color: AppColors.primaryElement,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(left: 5),
        child: isNetwork?Image.network(asset): Image.asset(
          asset,
          color: color,
        ),
      ),
    );
  }
}
