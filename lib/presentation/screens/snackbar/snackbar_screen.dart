import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const routeName = 'snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackbarScreen'),
      ),
      body: const Placeholder(),
    );
  }
}
