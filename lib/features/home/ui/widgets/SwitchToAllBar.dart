import 'package:flutter/material.dart';

class SwitchToAllBar extends StatelessWidget {
  const SwitchToAllBar({
    required this.onPressed,
    required this.message,
    super.key,
  });

  final VoidCallback onPressed;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                'See All',
                style: Theme.of(context).primaryTextTheme.titleMedium?.copyWith(
                      color: Colors.greenAccent,
                    ),
              ),
              // splashColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
