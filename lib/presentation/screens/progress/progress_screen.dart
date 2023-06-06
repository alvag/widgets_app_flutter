import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const routeName = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20),
          Text('Progress indicator controlado'),
          SizedBox(height: 10),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
