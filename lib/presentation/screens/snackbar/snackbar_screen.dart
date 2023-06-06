import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const routeName = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola, soy un snackbar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Ok!',
          onPressed: () {},
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hola, soy un dialogo'),
          content: const Text('Este es el contenido del dialogo'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars y Dialogos'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {
            showCustomSnackbar(context);
          },
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Este es un dialogo de licencias'),
                    ],
                  );
                },
                child: const Text('Licencias usadas'),
              ),
              FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogo'),
              )
            ],
          ),
        ));
  }
}
