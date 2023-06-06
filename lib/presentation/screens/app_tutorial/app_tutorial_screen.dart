import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  static const routeName = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppTutorialScreen'),
      ),
      body: const Placeholder(),
    );
  }
}
