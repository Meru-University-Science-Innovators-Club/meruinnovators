import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? switchtab;
  const HomeScreen({super.key, required this.switchtab});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
