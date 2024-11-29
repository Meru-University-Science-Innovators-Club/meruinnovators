import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({required this.child, required this.onPressed, super.key});
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 30,
        width: 30,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.4),
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
