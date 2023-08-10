// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich()); //starting the root widget
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
