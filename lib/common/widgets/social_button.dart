import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.ontap,
    required this.asset,
    required this.color,
    super.key,
  });

  final VoidCallback ontap;
  final String asset;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      splashColor: Colors.green.shade400,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            // color: AppColors.primaryElement,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.only(left: 5),
        child: Image.asset(
          asset,
          color: color,
        ),
      ),
    );
  }
}
