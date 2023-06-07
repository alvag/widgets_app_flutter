import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const routeName = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, bike, train, airplane }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransport = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer Mode'),
          subtitle: const Text('Enable developer mode'),
          onChanged: (value) {
            setState(() {
              isDeveloper = value;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransport'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Select car as your transportation'),
              value: Transportation.car,
              groupValue: selectedTransport,
              onChanged: (value) {
                setState(() {
                  selectedTransport = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text('Airplane'),
              subtitle: const Text('Select airplane as your transportation'),
              value: Transportation.airplane,
              groupValue: selectedTransport,
              onChanged: (value) {
                setState(() {
                  selectedTransport = Transportation.airplane;
                });
              },
            ),
            RadioListTile(
              title: const Text('Bike'),
              subtitle: const Text('Select bike as your transportation'),
              value: Transportation.bike,
              groupValue: selectedTransport,
              onChanged: (value) {
                setState(() {
                  selectedTransport = Transportation.bike;
                });
              },
            ),
            RadioListTile(
              title: const Text('Train'),
              subtitle: const Text('Select train as your transportation'),
              value: Transportation.train,
              groupValue: selectedTransport,
              onChanged: (value) {
                setState(() {
                  selectedTransport = Transportation.train;
                });
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Breakfast'),
          subtitle: const Text('Select breakfast'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Lunch'),
          subtitle: const Text('Select lunch'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Dinner'),
          subtitle: const Text('Select dinner'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
