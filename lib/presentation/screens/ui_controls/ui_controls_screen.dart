import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const routeName = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UiControlsScreen'),
      ),
      body: const Placeholder(),
    );
  }
}
